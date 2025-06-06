PGDMP      8                }            country_covid_stats    17.5    17.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false                        0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            !           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            "           1262    16462    country_covid_stats    DATABASE     �   CREATE DATABASE country_covid_stats WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
 #   DROP DATABASE country_covid_stats;
                     postgres    false            �            1259    16464    country_covid_stats    TABLE     8  CREATE TABLE public.country_covid_stats (
    id integer NOT NULL,
    country text,
    cases bigint,
    deaths bigint,
    recovered bigint,
    active bigint,
    today_cases bigint,
    today_deaths bigint,
    today_recovered bigint,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
 '   DROP TABLE public.country_covid_stats;
       public         heap r       postgres    false            �            1259    16463    country_covid_stats_id_seq    SEQUENCE     �   CREATE SEQUENCE public.country_covid_stats_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.country_covid_stats_id_seq;
       public               postgres    false    218            #           0    0    country_covid_stats_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.country_covid_stats_id_seq OWNED BY public.country_covid_stats.id;
          public               postgres    false    217            �           2604    16467    country_covid_stats id    DEFAULT     �   ALTER TABLE ONLY public.country_covid_stats ALTER COLUMN id SET DEFAULT nextval('public.country_covid_stats_id_seq'::regclass);
 E   ALTER TABLE public.country_covid_stats ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    217    218    218                      0    16464    country_covid_stats 
   TABLE DATA           �   COPY public.country_covid_stats (id, country, cases, deaths, recovered, active, today_cases, today_deaths, today_recovered, created_at) FROM stdin;
    public               postgres    false    218   �       $           0    0    country_covid_stats_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.country_covid_stats_id_seq', 231, true);
          public               postgres    false    217            �           2606    16472 ,   country_covid_stats country_covid_stats_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.country_covid_stats
    ADD CONSTRAINT country_covid_stats_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.country_covid_stats DROP CONSTRAINT country_covid_stats_pkey;
       public                 postgres    false    218                  x����v�F����SԮ��A� �;��e�D�F��g|f�0	���F��^h����b��,��J��}$�b�Ȉ�FD���/7��~:�}�Ct96���x�ھm\ז�i��|�o��[_6������'ׇo|�d{���	!�)4!�_�>��q�q7�	�}��&��k��6���m2<Fl���e�ط�k\�/�����w���ϛ�ύ+�?Z|R�:��-$YX�-6Bic�<?��?�9z�n�a3�7O��r����Ը���t�I���'�͈��^����x!�}tM)%��or4*ڍ����=7�snb�\�M6�W�dY/�����L�1��P���y��˰�!���"VbtQ����>;��p��R���x�E�w],!rG�p���<.���+�҇�|�˱m�������~:������f���
)$�9[���2L�&{��씵>�)"�=�7��z<���������AW����(P������]��޶O���}0�蛧�vX��[2.s�M黎xq���mٸ��i�\* O9�O����v��cX+3��G�m�p&��b��yJ���}�Y ��7xC|z��e��w}�
�\�z�4\����U �|*�J�$�%��3�)��t�N�f�����k���'x��b�C\·
���o��!��.�o=���O�^��ŀ��(x,���\��Ӗ��1�"�H2���������e:N����i�����[���@|&e	���T��ǩ�&!�f�I!s_�	躽�c.r��W$� ����pQ\��u�@���0f�āI�1��$t5�2���J��]*�:x�Ά�y�~\�GU^@�rG���1�����?��A�x~�*H5X�da\�y�('TU�U���V��`#ac?�����`�@ ��T��|rG�:� }g\���8�7������"͹�{��R�S���T=��w×��|f��h��l�9�NP�7O~Y�+�����tEՉQ]G5�[������p��Lܻ"7�o����0�����/��N�\ޡZ`��=���H��f��8;���-Q4ZlhX��VL������ 9T, Cl���yw)nB
�����$0� M�1C���ݼP�IY��p�D��͐�F9@���&Q�-�B���/���DX"ڡ�,ON����L�����+�:�u�<�<�-�p�`�Bu�ZBED��RC������gb�����(oS�0'��p�l]���g�!�E��� p�������D�� �u
�/�������խ*q��w�5+SP`���o�w7����<-cí����lM������.T�Or�va�ԯ���|?�w��AMla|�Do�Fn���݌�z�L���@�:q�&�b��7��:]��q���ت��Q���wӾFwj�$X�J-��������7��A�n$e
��X�����
e_$s['�F�'�k�/೛��#ɝ�@E�<TE�[����vs1l?�gAsP�Їʵ\���3�=N|��u8ΰ����:�G��A��w���'Ǟ����Jg�p+��fLNIͳ�q�Mp�L���x�&˯�ͳ��4�M*(��%]'jt���ɯ�����p���9^�L����<������e�p��:1r�����~�a�u"�P�p���]k�����^��|��9���#PZ�\Q>� �f�7?,��EtUa�~�Rr[��ï?L�ʸ��U�I���B�Wy��e��7�|�����y{�\x.2�j�*� �B�~�ޓq�� a��U#��.�Õt8�h��x�?<�9�y>��!�U��*��t�{g!s���A��n��/���>05���`@&e�s��緺��WTD �Ј�X���?�.��AH�u'V�3H5�y�<_Ƒ�J"�<M���	�Y$<�)�^��p>���[y�@��*C\I�I�z[�R,���T�q;�w#?|P��N�y��#��qw�z������ׅ�D�:q*Ch �8N��b�u 1D˻���>��amJRː��Q�`�!�(���{�T�Nm`�\���'8�K��0%����NU��O�d�\����a���gӑ�rĿ�Oʀ�����>���:��~h��-�x��ټ�~kȢю:��. ��Roy�����o����р�B���q�_Zo�uT�OWcM�I5�H[�Es�4?��kk�]�@���&�E���KJ22������^�+L�UIj;C���?Q���<�U��~t�}+=���^�%&�u�����1��d
����SѠ��8�V��������������7
=�I���ab�-�,��*LY�-�>������O�aK��8�W�ƭ�?eZ�N]�.Z��������.	ګ�t,�M����N�%A��c�S`��}6`�#��1/�Xq:��:H�*]���]��Լ>n��u���	џ$��TI���͋qRGp��@>!� ��5�7/�e���
[
�:*^��y�~lI;�-hrJe�����%�_�/7��O3ЖW�0D�O��ܵ��'e_���8�mǿ6ߏ��j|�m�X<]�o&�d!����jЗ5!�4*S��4����r��N'gj?� � G���b@_uw_���x;#�Ԭ4`1�e �ÿ�.묷W�T�����L�H:Mq�<Y�ˍ2� ��l���ڸ3u*L3ǫ��?G�p�@��'��R��29o�:Gn�vϔ�jѓ�1XF��4/����y]n�'�D�v�����)I����`>욢^��+ ���p5�"��Cr��"flMh q~��*8�P`*	4����b&`�z�W�.�&�R�"���b#��Ӥٹ!UDFK�C�t�^ս�$Om3ꢆ�!`����[`�2t=}h�~m�P��al��e:�YHd�b��E8���č�ԪT81��N��@��r����ԗ W15��3�i?�kEd
�f��b�-�DM'χu��5�R�Z*��ùD8,6���i�S�u��TSͰ��'AAz?��: Z��&�;A
�����fMB<(��u6�>�L;��t9���t�<0Q�:4R���c�(:o��rgw���I�� �=��o#���K�lT�k�P�<Z'ꡁ�V+��@>b��>�,�WIZ�����j(�;jqFl��øP�Ax�X��n�k�D��W��T�Ðt�C�S�����g�gNy�h$��!T��eKd��ɝ@���C�a�~���b��;ğ��:��$Ԗ��LT!�j�M��Y�	�.6��|Ө�&\�+�vm�bs�E���mr�j��
����4u��=	h�<��I��W���3����L}ڜۇB�FJ*
u��d˪�&k2��8�dp�N����I=�*F-��{��Y��U�<i>�&D�A�GKy�_M7�9 L���Nd��GC�W��u"Q�����	ҩ$�&���t�0�=�9/����阩IK'�/��4�A6����+%r�1����6�U����ᴀ�|q<m��NGy�ݳδJE�xM<�$��<�o-AYN���Qsg�����QTA�����be�����>�0RZU��I����:l�]�uӔK-+��-+UZS|}
���W��k�T�=���H���ĉv��<���0��Z�THl�������xȆ*J*���4[�R5�`�k^�5�SJ�
T/G�Rw�o��K	#�q�;�R�T'ES�$�Sl{`w��b�m�E;WI��9�o�̻��0�3�cRmІ�*7M��L(�*͛�P�.jj!d���`�Q����%��7�$�4����Ț:�*�׼����T'3��&����6�wf�\�^p)W�V���=���[����0폛����;�{���sć�/���P��_���WgM\Pg|������J���;r�}k9;��d� �$&�N��[�24 8�x=���͹�Ֆk«^nz����Q[�����(�oy~�9aj��T7��HP�ْ�`v7�&�uOC���`�R)/��\4�g�*����Ʋ�-�~1̛��n��TW&�;�B�{��dԴ�K��T�4�9��ZR}�>��� :  �_�փW�i�Jӱ�S�vy1.��^Pץ9��,�A$�ZзX!�����qK�鼺��j�4�0�!��6/G��/�ɘh_�L� ����p6h� U�$G�Mt�&�!X�L"��}]݆����B#ɋ-��C�(E�y��K_V{�n`����3�(b�ɚ! �KT�"٨�Z����:r������]���9pA=���m�m
+LUMm��b^��˒ԡL��>�����z�Lo�]������(�v�{�P;��{/��a��F��N۪j�Vn�gm�tt��2m^���8�|\��T�5��>~�O�oy*��/L�%t�+dLm	��/���$.V�l؍M�5����:���R��'m����N���XPS:E�8�y�i�&��?��|ֲ��bFbЇ�m|���i:~>)R�-C���ƨ�8�~���D�=�롟�Ǭ�˵�(�	��&��h����I�
.95|I�.�(m�6�Z��:������Z�NN"�,�����a��̈�G����m�;y{;��:j]Y�R�$�*��d�yb�����o_���Љ5���A�H��`�4o盙���P/���´��FIÇ87�;P�v��h�N]-zWql��s��l����J%�Η/@֨�Cݣ�m~X({�\h�B���`]8{�De���b�P�cy�.��ڈ"FR�r���5��+3'R|6LW��ړ�2PK�j�Z����a��}B�P�e���'s���3ހ�lX��G���|߼{��31�R (x�}L������B|w�D;%�D^-��-�����WK�:�^�����I|e_�-i���٤���õ���>7RT�\�� �N��0�
��y���y ����\[2�-1�Z����>_�8滐Rmk���Xж�\���_��Z'7buM,5��Zy��П�;n�����a�b �p�����#�S+���ڕD5�Z�rm�Z��=���a��N)��z\��/��iR��eR����.���p;,j=�A&Y����w�-ͨ�U$ؒ���P�|ڡ$�B[�9*u�e���iw9\~�.�����DZ�^�$[�����7�|����]�     