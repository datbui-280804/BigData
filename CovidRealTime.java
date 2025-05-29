package org.example;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.*;

public class CovidRealTime {

    @JsonIgnoreProperties(ignoreUnknown = true)
    public static class CountryCovidData {
        public String country;
        public long cases;
        public long deaths;
        public long recovered;
        public long active;
        public long todayCases;
        public long todayDeaths;
        public long todayRecovered;
    }

    public static void main(String[] args) {
        try {
            // 1. Gọi API COVID theo từng quốc gia
            String apiUrl = "https://disease.sh/v3/covid-19/countries";
            URL url = new URL(apiUrl);
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
            connection.setRequestMethod("GET");

            int responseCode = connection.getResponseCode();
            if (responseCode == 200) {
                // 2. Đọc JSON
                BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream()));
                StringBuilder responseContent = new StringBuilder();
                String inputLine;
                while ((inputLine = in.readLine()) != null) {
                    responseContent.append(inputLine);
                }
                in.close();

                // 3. Parse JSON thành mảng các quốc gia
                ObjectMapper mapper = new ObjectMapper();
                CountryCovidData[] countries = mapper.readValue(responseContent.toString(), CountryCovidData[].class);

                // 4. Lưu từng quốc gia vào PostgreSQL
                saveToDatabase(countries);

                System.out.println("✅ Đã lưu xong dữ liệu cho tất cả quốc gia.");
            } else {
                System.out.println("❌ API Error: HTTP " + responseCode);
            }

        } catch (Exception e) {
            System.out.println("❌ Exception: " + e.getMessage());
            e.printStackTrace();
        }
    }

    public static void saveToDatabase(CountryCovidData[] countries) {
        // Cấu hình kết nối PostgreSQL
        String url = "jdbc:postgresql://localhost:5432/country_covid_stats"; // DB name
        String user = "postgres";
        String password = "postgres"; // 👉 Thay bằng mật khẩu thật của bạn

        String insertSQL = """
            INSERT INTO country_covid_stats 
            (country, cases, deaths, recovered, active, today_cases, today_deaths, today_recovered) 
            VALUES (?, ?, ?, ?, ?, ?, ?, ?)
        """;

        try (Connection conn = DriverManager.getConnection(url, user, password);
             PreparedStatement stmt = conn.prepareStatement(insertSQL)) {

            for (CountryCovidData c : countries) {
                stmt.setString(1, c.country);
                stmt.setLong(2, c.cases);
                stmt.setLong(3, c.deaths);
                stmt.setLong(4, c.recovered);
                stmt.setLong(5, c.active);
                stmt.setLong(6, c.todayCases);
                stmt.setLong(7, c.todayDeaths);
                stmt.setLong(8, c.todayRecovered);
                stmt.addBatch();
            }

            int[] result = stmt.executeBatch();
            System.out.println("✅ Đã thêm " + result.length + " dòng dữ liệu vào PostgreSQL.");

        } catch (SQLException e) {
            System.out.println("❌ Database Error: " + e.getMessage());
            e.printStackTrace();
        }
    }
}
