PGDMP  .    #                }            bank_system_db    16.4    16.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    27826    bank_system_db    DATABASE     p   CREATE DATABASE bank_system_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE bank_system_db;
                postgres    false            �            1259    27828    users    TABLE     �  CREATE TABLE public.users (
    id bigint NOT NULL,
    balance numeric(10,2) NOT NULL,
    card_number character varying(255) NOT NULL,
    expiry_date character varying(255) NOT NULL,
    family_name character varying(50) NOT NULL,
    first_name character varying(50) NOT NULL,
    id_number character varying(255) NOT NULL,
    security_code character varying(255) NOT NULL,
    shayyikli_account_number integer
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    27827    users_id_seq    SEQUENCE     �   ALTER TABLE public.users ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216                      0    27828    users 
   TABLE DATA           �   COPY public.users (id, balance, card_number, expiry_date, family_name, first_name, id_number, security_code, shayyikli_account_number) FROM stdin;
    public          postgres    false    216   �                  0    0    users_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.users_id_seq', 1600, true);
          public          postgres    false    215            t           2606    27838 !   users uk72xls84exphqfi5xxc3olsnxg 
   CONSTRAINT     e   ALTER TABLE ONLY public.users
    ADD CONSTRAINT uk72xls84exphqfi5xxc3olsnxg UNIQUE (security_code);
 K   ALTER TABLE ONLY public.users DROP CONSTRAINT uk72xls84exphqfi5xxc3olsnxg;
       public            postgres    false    216            v           2606    27840 !   users ukbo1jlrcn1xxnkdxit194j44tm 
   CONSTRAINT     p   ALTER TABLE ONLY public.users
    ADD CONSTRAINT ukbo1jlrcn1xxnkdxit194j44tm UNIQUE (shayyikli_account_number);
 K   ALTER TABLE ONLY public.users DROP CONSTRAINT ukbo1jlrcn1xxnkdxit194j44tm;
       public            postgres    false    216            x           2606    27836 !   users ukex6i1auqb7k945xilduqambu0 
   CONSTRAINT     c   ALTER TABLE ONLY public.users
    ADD CONSTRAINT ukex6i1auqb7k945xilduqambu0 UNIQUE (card_number);
 K   ALTER TABLE ONLY public.users DROP CONSTRAINT ukex6i1auqb7k945xilduqambu0;
       public            postgres    false    216            z           2606    27834    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    216                  x�u�۲�GR��'��I���pm�n�ܬ��K"�mO��e��sm�Qi�ZUe�q���h=�����F˽�S���H���|������>������?~��X3�2{Ώ�����W��w��4��6kڹ���쏴b�?|�G�����c��ZN+=��|}�<k}���M�v��ꮥ��5��?~a�?~���룷V��M?�K�Gݫ�gJ����et�B�њ9�uY,�?>~��������ǣ��FKi=�L�еB�Ͼ���g^y&ma�G�]6��/?�1V%�5g[�16+��~g����T��u����q�
q���/y�_�:f돮3��1w���W���ғΠw�c�c�A|���o:��us�֦n"WVX��w_�����uHs�Q��\���^���{T?��oI�S({�!QX9�ֵ������E?�����y�%��ճ@N��/*܄.P_�$*=K.�%/��c���Hھ��5��d۵��FiM�����?�}�:����}�ERU%i��!�*��1ʳ��*:��m��L$^���_%�s��z4�k�i-i=%�[?;K�H�5��J7���B*�}�X�Zn)O����~���9�>k���hک���h��E2���/�H����S��kͶL砛�Xy�<G[]g2��]{�{�3�WJun��M8�x�T�z�ɦ��)z�]�Vuw!���۷��������G}r��I
���v�ĥ-�T�cH�9��Y���!�~���%��w�L�nd�yk�L{�Y�����:���o1�+S~U9���yW����&蒌���OI�v��nF/���{�������_�����舘���-Ih۫<�#��6s^]!����ǿ�$~��ˇ��v�R�z9�F�:�gם��_go5������:�����>$%� �u��0I-E'���%�S�������E�������O_���헯��Rkm:3��n*�H����X����~��2�Ek��bB����O?�� ��^LV�.C����� -��Ny����E�����^��B��֐�-�O�S���A2"Uz�ܐ�˗�?�K��wS�z��;�>��J�2kK:�l�M<��q?��+"��Ex�p���^FE�"�F�ы�^:����_��:(���G���G����]�>3U}��ޒ�=ߜ������>�2]R�]WT`�i���:��?"�+�S8���S���e�|6���T�#�C�y֦g��ʺfl�<�����zI��v�RV;��3�`$��Z�D������_�Śa�Y��_�#����ٟ<@�l]Ҥ����BH�-ъ̆,�~���ѡ���xj-yR�m�(�謐�ô��/������֍�⎂�ڜ��&�8$=��ۄ��Eb+�_%��}Iݖ�re�������Y�]zP'*E�#�7^�7#���o]ܐ����¤v��	�.+-�C_�y��=ڍ_����ʾ���"�����K�4e�3����~C�O��2�3	%�'}��/��6��]Z,�l#�+���Z8��,a��Z��͖�#��*=`�_)�"��&��Q�k�[�2z��=L!˨k��&�dH!붤��{��'����}����_~���=�qD��:lٷ���@Cn&	�<�:��X%N��|�Er��43/F�)gUZ��@��Rq'uR�1T}ӲSݧ6�w��ı�͐�{Ѯ����̔F�e�?��u3.��q	�Ҕ�F^����ёwY~]u���OJD�<�W���_M�Z���)���fL6����r�������׵.A=��oQcr��8L�m�r*S�ύ\� ��	W=�_}k{�rY�*�]L�02R���Na�)�9K���O3y8R��������{�7�s����~�u���=���w}��|�~-�V]LF.;R]N�-хKF%*��������y�Z�ʩ�؍즶���QiR�2T�T���<����յW�!�)�x�G�BB*��ːC���X{9�6~��gI��~��Җ���@�
��_�g���@��<�SlE+IIM�����lm�Ie<����޵�.�m��r?	�(Q�4<b��(�-�|txE��IB��ҧ�5(��i��T�R��]���:��\d�7��ܹ]q����㷯a�� �1��������PoYȜ���Г� �;��.C<z����b�!���W����[.!^���xm~ zlr-pӆ���%z��XYI��K�K�����{ש�:�S[�q�NO��BR	��?�=4��z�)��ۏ��hI�K�{��*�b���'���خ5t����{�t~� Axʺ�kq�_��dJ����(B{�|ʉ�{�Z�"K�=��r$�rI��N^<�X����8��$�8�hr���;����!Kh�$u��h5=�U�%3�A��¡�S�w�e�O��)/�^�![�����gTӥP6vɁ��c;��Г�KT ����ʾf4���wt�<?���Z��h<7m����g��srMu��J��׆�eN��M��VҋP�bW;-��)�w>y'�$���!�c�`��;�w��צ��G�S��\:L=hܽ��p�f�}�A��ҥH��3�
�A.�N�4�"_t�>a����qX��)f� ^�nJ؜&)?�b�,��Bb�?i��e����'���+!��5q��6i�$�P�����o��Y�$�0d�%r����c�K��R�(+m��8u�%K�Z{��&����'A���J��S�ҡ0�z짌�+�d�>J�y�6%����S��ڤ�_�M�u��s�]��VG�% �dkHBS-O���v�2��q�?����׿����|ˉ�[ ���F��=�g�_A�E{���ȕ�����쫄�c!��
����Rp�� X �����K|��L��u�z�pgct`��:�|s� �^��.���c�=5�i�4����Bi<���������#�#�X�!�b[Dҭ�B7�B�F2��Ncz!�^/1�7�[yR��Vtf�hI���>,u�/����d�/�A���Z��hb�~�z-$�f�~���� �3��"Mĵ����Kb%�����걏8��gW�L	B�H��z0�7��}�r��#==�#*��� 0�~�dm$���!Q7%ڈy��g@
�_��Cŭ������FT�Ξ
dy�X�\]q'�y�P�GԤXD�IFH�K��%�=ȹV�EN�H\�)(F�|82"�Y�V���{�+�0�Sw���!aZ��zݓ��7.C��o��r9SJ��˄J���Y\��{��Z ��:X��o��\�"��nD�"R}�|�+=�dd��ou52�Ķ��@b�t��'1KRT��A:�'Z@᳼9wl��e�j*EϷe<�-�qy�g5�ԑ^�����-ri
G�;L��-��\�#�fZ���I��D=Ml��������8�	�*UJ�q��s�-j_Zuz���3Z,����!�����pc^�m܍Y9�
6�|�7Sޭl�L�>D�)�p��ٻ%�tV:���ô5���o�)@�Kn����6?�����m�#�/i�J�S�=�d)Y�'��q)��bP�I��y��Fg7�I�]�⚧21%牄��Gӆ��nw�w���9�Գ����b�2%�z�Z�tPR^ZCې��	���eH7X�aQ%�o�>ݒs@^?|���՛a���)�R�(�����I��)^���b+X��Ml�	Y���C�"����y}}9��~�:齡[���yB5��q���������A�VI��2r����Z�NZ3�l��o���ye
��%�����v��dt����)�T� ?A��ׯ��s�!�+�U)��)��e��|J(ؕk�=����ڡ�~���%P�����%��@![��$Y(�&�#_7�7����y�$�N�����e��3m
��z9���W�Ѽ􀬊��~�/#OO:�d*@�@z���{��{��a��D\jȜ�N��^���M_!�@og6w)^�?||���,�`K�ƈ�{�W��H��&JhU焯��%F]D�����K_P-KO�.ɳ�n���^�?n|ڌi���kH	�&xH�B��ɡ&I�}��39�B�@�M'#��|xy���	�F�E�Uj�䙟�q;Onn��؍D    N��^�w�z��2��L��%�p6��d�5���8�7-�Us��"�:o��X�~HL�"����VlG�ɮ����#�!W�P�u�秐|TL�	m��c;�Lʉ죴�^S�	-z��GȽk��I�I�Ht]`&�ͧ��`�6�â��}�7n�0:�R8	̇B[_��^���a@��ӯ���o���D;�%�!ի�L[���Q�/�o�nѽ���vi���B�@�\&ɪ��L����wZPHj��I���/�vT����Yτ�
��O��F"婟�/�:���T\��{դ���+����*
�2`rg��}u�X�fw�ڤҖe٩���mM����P��K�"_.�=[�KLѿųe�R����uK�������R8��%x�gb�&Âa+��g}b�$�5��(2�2�ב�!���Dy�yI�8V��äL'sc�nB9N�rK�8� k~+{�i�E@h���u-�b7��=�����E��%�X+�
ei%j�υ*����,��.Mt%�-����� �&�3��0)KQ-��;�V^W�Ͻ��<HW��JK��&饐C�B4����_��:s��&J`(��9=%�R��)�hG:�}�Cx�lLI
��1�u��al��ټ�B�An��&˥�?EZ���(!�Ě���R��M� ��h�)o[iH���H���˓H+�Fͧ�ʓ��*b�%�V8�6�I�ť��ˏ��U��L��9l�5a!������v(����ʫ�G��#]�e�ؔ�>�I2R�!��l��V�m�"�H0Ն��
"G���ȓVȬȜ�����0�ԉ�ν�Vsڛ�L��� ��T�A�f#��
`g�#U굟C=���H��ߡ %���a9뽻�Zf\N�"�z��3^��{�R�(�Z�Vi�i֦�5����S�V<N/�c$������v/��_:������
,}�v�n��C��yz����3V���Q�$�)��r��řxŋ��z�0�kXK�s�#�S_�Ix���gmĳ�)�щ�P�7B�R���������o�� Y��ȱ6�2A�XAToN�8�ö?e,�ϨRz|���BN	�K�,����Mב t|�l�ބ��J���ry]���;S��X���+�fq�J���Sr��:�m�^4��/���F*y�61���a@����S�K-XFB�(m0_�1���W�u|�X��r��?uֹ�u�O����'GIe y�p���$�Ӫ�L�Yr(�K�[-w����ҙ�g�Hj�FݾKߓ�Ӄ�
FP���s=_��8��x���F�@w��k���2�O���q��l����k�P��29J
�'�(�d8��^�u��� �!�����$H���rm�L��?�U�R�n��/ٗ��T�3G"[�o�_�߁�k��dk�4\G���o�O}�����
6B�౼�}�FK0������H\�bY>z�+��	�5����o�$��7��6ߟ���rsH�b�P�Q`]�]!J<㣤V;ɢ��K�$cF�(:ذME�Rl�'�v��I{!�z��)�b��ٓ!�%��\v'N7��Y�=V8��ɠs�2@R���z�~�D����yڐ~��d�Pu���h�6k���ޗ�t�G���5_��T\-��qaH�I����S5���D�I���i���
1�R/D�C.T��o7�@�Bya�O	gjD�|煓2,+;��	��N�\�E<�;}�,�s�4acL|?y���
)%��i��ȱY�Yv�D=���L[N�~�)�G�����-��m�	=�=d��:@�6�x�����e8:�ҿ�d?�)���f���Z�%�3UF��(|�1�2��a�/��U�}*b �J�K2�)Dq���!ưIJ�z����**N�I��-bG��Lwr'=���I���C� d�LraV���D� s��
$���I�:�L�+D8H�X���+(��{9�=�y�+*������%'lNX�M�]�e�j�],�e�<,��RvaW��6�3(V�����>@�% ��Z��h1|�l;%Y[� �w���e�%��z���2MQf00�� 
����GЎ�s��^���K�F���ORҶ�"[�b������G��O7Y�)-�7C�]���e	Z��u��!��pDe7q�=�D�KZ���)�³j	�z]�@�-	5XiR ���$�0��%28]�'���m]�CL0����� ��S����xip�SC�Z����"	&Q���(�*�9�#}2��G�Y>'R"����un_Ĳ���/P�L�jVԞk���RĲQ�z3�M-C���� ���l7�pXB�EZm]�9>*���Ȃe �S��`6��ݐ�%o���)}&4N$��rq9f��|")�[!1�1a�ў%Jq�� & [�\��*J��Zi������'
�[���ZI�t}�s���!�����G?4�yÇ��ջf���7�E�X��x�TX3�a�^�S	α;��lͣ; �dl����uݞ\��I��.w��u��J�֐�kM~��,�d�/��]����1-�g�0�9�Y|�������t1X���zt��TjA`�\^3�E�	hML�l�1H�\)���`�X�o���l_fP�k�J�e@9^Dؤ�O��Cҵ��9��)�3!q�uSt��Z�lH��G�G)��n+��8St��rK2�m(P�"��`!���h��u���E��J:��4�yL{��B�S�q3�������נ��tج%�m�3���}��!�lz��J��BɌ�����0>��d.�-ވ.T� ��5@��.�"u���8az ������ΰ'�J����Mơ����":�z�((�sj��lYν�6�!d��L'8:N%Q���p��� �\��&B�MEp��� Q�{����9����)�4>ř ۭ�3�?����Q��ݵ����R
���rʫ�$�A��@�V��F�9s��b�Lw<d��
;2]B�P�f#�g��ϴH��C[����	��Kւ�u�b�
G�4�/9�,DI�Sń(t ���4D���+��"Uz�b/��h�F-Cge!U�?�us/������1��'KG�T��40����jm:��U�8���Y�ɍ+4^�.^V���X�[v�c���=����o:�_�(Nl�����}1D �>�j.�Y�ך�{~}5��,�v��G�(_�Xo�xU9ĕ��y��B9K��_u����U�hrő"\�N��|79=��N[�eQږڡ%aS��rb�K�Q+�#���G��_$ӥ<隑^x�����gwe�dR���cIeD��lq�Թ�S�b��p��pՊ.w��^�E7`���0p�Iӻcp�fdJd�c6O5�����I:�P�L�"m}ٞ7Ի����t��c�	�!�%��AťGyW���v�-K��ҧWb�n�;�F(� /��f���;a�t)����D
�4��>���0���k�17 lMR��y~9a�e7e��*����g~�zq�*E�v9 ¤	P
�V(��I�����R8��
�@�#���������޳�i��0���B�Q���a1���m��C)������}�w�Qd{��	5{���T,�>$2�/���s�xBL����D�M"��tՔ{/�i_��r��JJ�7O��8\b�K p�<N&�q��W8}'�$�F��B�D���E"��Lj��#�
��tq�8�A����� ��4�IR*v�ډ5���a<'�'3(/�˚>��ΧE]ZN�x���o��&��X(@B^�a9E^�{�u����|/��V:D�sɧ�vh6M�����/(ay�5�K˾�Aw��283�D2��[bZ�w��1J��:K,V2B��R<)�f!1T� �p�Q�t��nM���Z�O��n��z\z���J�4�oT���9i��Ŧh��M>F�֮P�� �$�^�5cz��0�� �{��C�E0�C@E�5�F׹.�X^��p(}�[���
�� 薨���&�a���L���C���C����	�`x�'z�#�y��/��mÊeO���!%�Y��/ڳ�5�    �n`� ��wO�LZ�)C{1���Z|���.�t��s<ou��G�W��}sD��u�)���S��p��ҽ0@�����T�-iG֐j�;nw��Q�5F����b�y}V�$b����$Zƭ�ߓK��ږ�h�]�+�L��k6�z�}�~C��+HO��.�dx��q��C;�@Yz\b[qmOR!e�f�P8
��X��Ԧ$F@��C�	~�D�I������Ub5[}&����3�~Cp7$T� '�LMz��$p�wK�z����d������d��<+���X�& .�,�H�>W��C�,�iKH��p�H+!����o UM>�=ڰ�n�HQ����rX��	�9�uiVl�EY]�t�#���"����Q�a�d�D�S?����֑���м N��;�e]V���Ձw^�P#҈�^,����l#����x8I�yӺ#]S��1G�f#2B`���,|�
x�_�س�q8f-��L1(�_�"zA�z �c+A��Z�i^w0�=�g�2������!���NB��ƽ%��F�~A����� u��~&#B#��h�2n���~�K���+�Wi��<KM���@�C|��
�K�܏�t��^��*���g�S�謢����k�[5��� |�r�
���H�\л�~�_/�}c� z�3�Ђ�4��!<�.k����4�0��
�׀&��{7��'�H�8oʷc	�Q�o����%�H��$�,4����A�z��(*Vr�$+����
�:rh���&���pʃ�B��y�Z?Sm ���a�ŧ����G�A�@=�VǶq5]�5`+��%H*|8z,����k�����������g���R�
�Ǆr8�s���<�W�m�&��"��r��V���(A��Đ����4�c�#[����mU<�^3\�f ���u���dc �"]�L�F��i��.��������a�tz*�3(-
�B5	I�pŰS��S�wŪ�84�@�9>L,k����h����3����k�%�KEO~��V�j��vYY����T���q�A��'N#3���Hc���5z]U��>2	�(A_��3���<���\��87tX�
�K��|;����7~�0����.�Ma�N�ϒ9ς���%p�Dhn��&�x��w@Q>�5uٝ
��pf/RY�J������ᣌ�k����m�G�Q�Zi��W�)��piP񪟐5x{M���>/�Y�h6I`i�,*2߯�[O��j���'$k(��'7�H%��R��P�4�I2�"�f�$~�1
X���	���̲`h�u'Ѣ/���K�뜡���H�����:�R���`�!Xr9#�A��/;�e��}q}����L�^�2��T�=�J�7��e��ߓ8�ֱ7�$���d�\*q�6�9t�Y��/[L�)?_�<|`uI�Kڎ����%~9���W츭Z�Κ�/��)M�����e��� ��,���v��~jK�JzW�N)(%f`���Kи��Ҏ����a�fs�_o�
3N��Y����V�)$���[�.�-�֓EDG�D��t�.�1C_�Jt�8��0��F�[�5���[ۯ��^�V�I��[�Rɔゎ���T�>ѓ����$p���{t�0҅P7-�n;���d|Wp ��<u�;�]E����J;��*.�r0'����K�<rA�A~O|�6r�����y5�Г�*�l���;�A-�n�5��u�]=?W�ʯ)�b�i{�07G�z���C�J(���v\�-�7(��35pϮ�+-�:�).�ê3���î�E�x�;��|F�6[?��X�����>r�)�� ���4�J�,���(�;p���)9�d쉖Z�d�;�v�a�=���D(?�'P1>�8���� �G1���E:H��n���ި'��鱢,�,�8EB���;�w���і�A�9��`�;d�I��4/�	�t���Aꎪ�g�8@�Z������N�*��D�.����	�)LZ��O"~$YF��ˍC�Lg�ݳ�&4��\_���Q���V.(&�%��=Шty�C̐�M*�f�D�/qo.#i�����yR��7�҂5����E�aM^��@��`3�E:��T��/�*�
�m0�\T��/!_DjOk��%���OC�>��jP���3֋��D��M�8�*�L��(���D�4�&�rC3�8�n�����X�[4UUXYA��`N�u!���!@@�>�$\�`Y����Q����#�7|�Ct��{p�6�S=�����o������U?&���ſ� �N��H��^ �&�[4!�|:���=t]9�yN~�	H��Ag� _x}e8{�@�6Ɋ"���.�a}�1`��X�d�X�>yhzJ��t����0z���0 �˰����� ��/�\M�o�&�3��o㫅�� �*�:Ɍ�y�Y6M��F���j9�C��B^Ȍ�ٴ##�rB��hB_QC�QP�U���>\##�� �0P��J7�{��[T��U �VcG��j-s$�ȓ���Ka8�N��'�5���M�0J�%�ߑ�C��V�;-�=փ���Aɗ��I2Cmy�J�Urd�gO�4�D����Q��l�ص�{C6�CZ��n�~[wM/�nj�γ`�B��&w|{Ys	�m�r-Γr����1ei��@X"ISڭh�$Hw�\Cw)
=1Y���3 	7'[1�L*�_s5���z�)� >L�����]�Du\|���V�e=��^�4H�����`����u֎����(��ɒS��p^z<SK��:��P��a�*�@2d�A�xƉN�!�v���0~��T0U�S$!�/R�@5@��4 ڀ���^�3n$�EH���R�h��;�堖�z]wx��l����ͨ72�+�4�ٵ	��7qk`���xЙ���2yʖy�y���| �ԅ��Ǩ���W� 	�&}�l��=}$�Zܸ�x�r�*�䖺C��~�٘��H\�H��D�8��U2=���x	�9�m��(�B�n`�~ܛ:���w�B�Koh%�y��ȍ����~�5 70� V	m pXI��C�z�dS��}6߁��rEx��|\͖�x�3�~)P�.��G�n0,�P��c:X�0(n&����X7ڙ����]��:�2�a@s�qg�{ی{hG�vz#��]Uþo^ŧ5���}��8V���'gX�U�OH8zv���Cj��?^���M�3��-��fy	U��v�%|Ck��].9��3{02��PЫz������~7pk�Zo���|<���i�G�����*�����na�o�g�jpm�r��W����H�$_{�j4�Թ畐?�`��6 7+L'�=L�2 �f�7�.gz#TlpH!@�@�92��A��`i��I(B���r�X�n�,�H�.ʹَ���f5�V��7�A(H`�2|�9ك��S	5��L+�]4�Yc��X�2o#PY#��Aohh�4i�,*lWI,�ͻa-��<�8.u:�i�]>e���
�^�BC����%׹,��E��J3=�w��P����\ǈ��O�n������zƸW�GH��W�-f"��H�Բz=Mn�Y�_�[��@�Q���<^Xd��
r�3�	�rk[�~��h}4��7��-��ސ����柡�\s�#�i����h�������@��	�Ӹ���Dn�nWQ݀!2!zP�Ҵ�X�z��N�S�z�Y���8�I�=)�r��[��ؼ9�knZ�d�d����τ���W�-C~u�_�k6\ �$��[�Sl��h� ���Y�ϩs�"���%�V���,�,�
o�d
4h-��aG�$�,ou r�g t�pQ3����	r_�ŊD��×^%F�E([�b,YO�Ri"&���{!i&#Q������d����v����{_G�����3B�h���e)K�6h�������Ǧ�Uɮ�
�� �������N�j7�kЃ�>3�`	ߜ��    :x�3��tO�#��Έ�N� ���#{8k�^��$��l���Хs9���*��ppq�ՒɆ�/p�X�]����7:��B:I&�ul���Q����*�4Ҹ��#R9`�$��l�4K��PBѫR�����~ � ��lrʩ�R�w�6�X&�|�N����JLq�/��n��yd&��DӺ��������N�F~l�[!�ɂ	 �?Vk�)1����1�T:�%0Bh0����f!��o�KQ���]���j2��R�����N��/Fk2EēȌ���E�b��u%d~�溂ay�0� �U&�g�u��]��un�8�+o����`�f�Dj��X� �E� ���8��3�+�wv�x>ʂ�ҷ:��P�s����J$�1�;a��Ś��n��9����`�٠�6߳�Z��%��I�j�?�JWf;qf��g�C3�5>���Q�/zRp�>�s��_���Ըd��/�5�����7
�f�������C%ƾ�À:���ƺ�9H�v��{���t�b)��B4M���m����n"���=A��#�0����*�T-��\IR�{��1i�F�Y�Vǖ�>H�Q�Eb�W4t5�Ͼ���9���	XjP󰌤Ζ<S�\3<���)9�:�6��v�Ɩ0V ɧ[Za����J����ŷ	'I���>Nc��b�׽��z-ٹv�F8��G
�e���J�L'l���־+?޸l	�N2�`��w���3��Js�4�����8p�1��B&�,)�	ް��*��.w5��x�F�h���#�i����%��x�˴t�.@�]�!����5߄a	�>�a̻�Ҳ�[�܉F����!fwg;��:��U�+AZS��tC�݋���a�0��^�KB�i-?�,z ��Vc�?�~�?V�)�'چ����;��ZH���S^��@��|$j=b\ E�zW�|���n�\.@�p��x�����%>�j��Л���%�Z^�����|P��V���[�m<��d�y�BRLk+PKp��:h���#�&�4��ո�>%U�Q �t	�O������,��m4�`NN'��g��_�^�,�/b��b�3���Dm��l�+��^Ě4xnUz=���T6�-J57� ��(&����4�/��p��I	�
<f���w6� #5WЌ��~� +9C�~/\��cw� ���eKLJc��/�#
9I"I�w�5��K���0��lL�~��V:��&!�Z⧶usx�0~we@)y�%o�&9�iǸ��g����10��*"O�����r���şSL���O*�b��C!.gˆ倇�6 ��L鯰�m1�
�z�� ��`@*���3��B��p>XU�D���+$���i��J��k��ۄ����!�}%�7����7=r�-��yF>�K��J�RG��
Y���sZF[� b�3ޣ\.ˍ���)b7�L�l}xxe�h ,{Ok �Be�L^��X�o)�{��SP`��V�e�Q��}�����ѱp&��������ɚy��H��6h
�3�Z�;	gl�o�`��l�S�6�jڱL���QZW[��c[�bb����TҬ����`BƸ�;K��F&���9�NEaCQh�@��Y� P ������e�fR^��������܆�s���ֳ�12a�Z��)w7��{)'ʌ�yq��/p��2�rZҸc���T6��4~!���g��T2 n�f)�C��s�&����ړ9��>��BAq	02�7C`lQlF^�q����o����f�[r�Ó�0�z։��I��V`%��u��??RA#,��Pr�7��[uڴ
�2����0�=]u������p��R-FNQ�H���v6��B����z�ONXޖ"�b�am|J<?L#��az�JO0�t_
�m��8�%D>=�-�p��˘f�fzHԢ	��3�N�L��.b*��!����DR'����Z���}�φ2X[!�!��I�6�e&�RxZf�o��nPt&e281��aZRb�	�"J�Ő������&��f�����)I�����X@���gv��B-�D'*�m1b1�M [MXғQ��p+��,:�d�aa�W��)���M�~EE�;��GY�9��S���жj\�֕�a�i^����sUҬ��T�������\wl����^�Ҡ�*0����~��0�nF���1>
����hZ7X@g(��b�c	3�<�Iw�";�=�p/��Am&�Iཧ��.�-���)^���֧)i��"WJ�=3m|��@F�d\]X`�}*׭�Sn�b_��u�nd���pU�pQn�� ��U1jN��ņv��2����`a�a� ������D5A+%���y�,jn�uzc�E:�>�5Q����Q@]۳\Ã���O?�vk��u�i�3J��L_�[�������djE��S̬�/�Tl.���k�q����H������Ŏ�-�m��+а��d�Nu���Eݹ�N��pm6�Xh3�p������h&�t�w���v��2���>�������8� �*��+����DG��e��f��TO�s�i�ݤ�*�d���c����x��I��3%'�dZ����4����O���ȔZ�SO(L�q��L#��F��)�z�i�~'j�;�x��z��p@���Y����	�D�?Dg�H�����Ӿ�^�����T��x�
\�%a��0���vڝ�#v�994'��o��?sN��	`!�7��kG�#
/���%b���i6$�fa���.h줟���6�c�'�}��h� ۪M����L����3��[E!�B���bsus%BЕ����o#"���LJq�*(��Q��V,T��&�^qm2�'����N�B�4��+ê��N�1:��|u��|�-�Sƺ�H;�����0�'I��L1��J\�C[]NiV��Y�_�]@u�:��^�Fė"�Gp4?F�WO���|��"K�9
�Z�t��@�i!cѬ7Ֆ0��ڬ�b<����V�>���h��)�2O�߭m�� �;YV�fwQ��L�rM]�Y�I������ERe�8��N���qG��+��V=�5�M
�8Զ���uC�\D��b�{7�S(�}��r���.3��b}��zV��%�X\z�IP��s�z$�&�LJ�y�tG���c��+Nu�UYdT��K�0���)eDC3�F�����R�cQ�O�܃ᷙh�&#K��/��ř�T��agP��u�y�3j��I�lo����f0����6�aR�	m�|A�p��8�K|K���#�HF^��*���
&��}��|(3���#)6���0�u��>fxY(��kYF�b|}�(%5��ܢv�q$��rP{���Z"(�`J�OS���n��6�Ո�OF��Kۛ�e���Uҗ���vL/8;#�!�Eͭ?�g��x�*���d�����+���*>U���z3�b��%X�;��p(��1������±��8��L�ʰ0yP
��Sz=[�Ed�A�C+�-��� gk����H@(�"��::����C��C��̡E��iqH)5� f���f螴9��FW�,���8a��'h,n�Z^�&��ᐾ�a�*!�U�N�X2�F���"Fmt	&���өT� g�:i0�N�'��;�É��F��0�;�60�-�J����H�\��}��pX��3ٗ�@M��KGP�Y�T�
"G˪>Su1�.N��M&<�Q)�����v>�u8����<��Xk�J�S��a��-��:^L`:^���՗@,$9O6Y�X�"��(��aM�p���)0/M�J�6<�cٸ������ҙ����|��o�Zp�׉�Ab�S���ț÷7����6#�� �K�-���ﰰa�l�c�X����2Ӕ!q[��m�5�W"*�����_t��f2������N:���pr%k��m|4���n7�M�����t��|%��|���;��f�b�c���G��*�WW"��    !H`x���c(1클UgRI}� ILx$ف-Pl���;CHH�'ftE��٣sμy��̙{�c�5�
�ȍ�kHR#g돼��]�6�N���ޞ��ȟ��Sb�l���:?��-DmRqt��4<��1�׺�H�����v�O҆��oυ���$�V��I�=Ӧ����vHa8��B��+_��	
�"�H��,��3Rkۨ���f��hcL$ʝ0	 �;j���	�9��� �*	�8-�4�꟤r3�u�� _�5C�� \pBha�3hk���r7�94��2�4F�oЖ�سA�Po`����ʓ�`C��lНߍ5�� (WÞM'�+k�����}W9k�kgB�,��#u�����+*'�D����A�����nH+����"��h��N���7���vXO�D��$����A���+��=��g����R6l�a���@gc6��������@~Ag5��t���HWi�l�I���h�9��f(��-å��|w�d<�;l*@�>Ǩ�9���&��GaF�,8����}�{?Z��
854��5S�!�b�4�z������Iϴ�tǿL��(��2T��al�Q�5�ڀc���~7�&�.t�BN΃���g�y�瀸��l�e�ѥ��'-Z� �N�r	�4�V�RL�.!)F��8Gd�獨��ǲ�@�,E_�ADślfͶ4m7��뙸�K"�����k�QYִ��^#�Ѧ����� ������r����Dȍ���hf�$�fP��b�e1I�dlEg�y���<z����n�I�T�6��3���g&������˅3ս�i�uxa)��:����3�q�cfS8�6R1� b?��Q �ݠ��y|��� Պ�6�3�c�zP���S�Z��V|�XR���-�����0� ��O���+,Uz������`/X����ߏղƨ2���Ұ�jv��>_s�1�G�<$���pn�зMu>�yQ!�[�Q�\ w��Ò��s����.,�7ϕ�Q�&6�i$B�o���A�%�t���(/�_nt<��P��o�0����J�ǔ�i
!:�7��֠�@��cy��	L�>1�:�X��ł)~�z���15�Ѵa�F�+��I�L@�Θ�s3��.&��ྴe>ɴ�U��!����e�3o*�2��/Z>i���$I��%��6$�3'�O`�0�p|5@������Ҡ��ɸ��tF�01�5�N��0�js6�qj���N���\ �V��T2{Di�.q��ͭ��G Y�̆�4o� �Dm�:h��
��FF�v�ʿ�'�ќ��zn�Z6�l@�U$���^�}h��޻j$�w�B��^Y�ȁ	]=8}��7�(�Q]�M��Z�T0�{6�!e�P1
����Q��n�8�g�hR�<it/�:ÆC��y���w���hc���׬�(7�$�Lv�mX�7��?�а�����D\��ʆM�*�����^��4l���>�m���8�e���>,eh�n�a�~;��Sl�0<m�� h
	^
ؖ�����c0�7AO�fn��ޒe����Qu��Dֶ��H��c�i)�Ht�Q)���l�[���f6#�7��q(1R`Z���r}G��b"eP��&�0���Z�SC0�
}X+n�M0X�����|==c��ͻr��� �S��s�7dcW�Q*f�q���g�
S˘����Һ���H�Lf9�- !N���	P6E0�gx-���á�ް�g�)
�;�=����4�u� �먲��v�批���B~�"�ʌ=~�zt�
�vZ�<Zŋ���M�0����-3��Yo�[-�� ��)xg W����H���A?E߄K�4��ѽdi����ɦq������a��cm�:kO���P�v`�]���_�'�R,�:�(X�*Z jHd���h�A %�Ә/��!�#L薋���t�{��EHQ���w}�E�F�q3W�7ջ'��+�%�`:tb�:k��ަ���l�B���*%-����d��͜q�R$Z�!W_w�ntv��6�p�:��p%�X(��Tq��I/v7�]χ'�`l[@^ç 0��t�
�f��M����7�v�p�0����e��.�`��`�c*6��^�)�.�k���W|@cl�L�ܰ�qZxk�0���B����hAC����*�#��@��y-�w���bew��*�����`�D�.���E��da�F0�[���a܏"l|���EBT�J|�t�/����m|M&Iq�6�����L8"�!�U@47z�6+O�1�j����l��D� yl�j��DT�n�8� g��"<g�@$����IDl{{�v�6��6\p3AS����j��I ��f@��k5R�p���I�8��m�� ���a7(��?oC[hڐ���x:a�u������¦�C�kev�6G��:����?r�|�P��a���6m��g���zOA�����b�P�k�}�5`p[�|�M"�P͢�d�;+ߝ��@�ȴ@?�}N�g#�6�6پ���Μ)���|��s|.d��s��_��s�	q�.����B��L?<�F0`�O+1P��5��́�/yV0
P����&o�`p$<_p�@~A�b�|������u���6?��1{&\".�D�[nq�����r�?p8���?�}'aw��$��v�Av��o�⫍]��KD�vN��L�woG����'Bc�do�\?q��&"_t�no���H�]�P�z8gEW����9�B�0�'�$<�2�@�p��e�ziwf�k��Ȑ�<{�����&#���g�*���4���!&0�):�4N��A7�$ix�;-e�ZF=�)��'��Jh��f2A�`M�V[%	�lћ�=�Nl�SN�(�l0���p3�½�T��_�O�ml�:#,�1MTf[���;��1
�6x@���� B�>��Td��e"	��wh����(7��7c�����e*36�	�I�]�P��,��'v܌�a:�gL���E�NLD�LnE�@�7��i~lG�3��ń%x/l8K��y%q���a[@�\@�%��SL*eQx�W�$�1�� �G�e���L�a5��%orD�Wn}�?��vf�u�"�*0ZڕÕmN4ȕ�Q�
3�o�B�~S9<Z�0��:�Kɿ�d�"���wD'�D�W�{˂J�%k0�\ {5�A�X=��Z���\�s�Ph2�鞾}I���"�C^/>&�Ԛd�K��"9G	b�~R�!��*�c֓e�{��E��,d+N��@��� ��ԡ}]�Li� ��$�!;�q[�d������5o��2�-�)��$ޡ�&�i��I�!w��|(�����U�ր�P����冝�3��U�g,�
�=)z<�i����v���0d����!���ƚM��	�澙��6��jy�6`��|�F��+�~�Q
�<)]˼����?Ș�[j<n�^@;s�Q�~"9�����S�9�n�w�!d+LAd>^�d��t���\$~�xl�`�=��'[�2i�	p�N�#��Br��e�=�E���j!�/�@L�m�X�����`�f�e�-_~�a���+�1{"
|��r��^�(!�e�����e��&�sО���4�z�dǝ:�Ef&/�"�h>.1f�fFQ��"�c�h�Y�����7��ۣv0���Hđ@`��Q�f̝8H~�Dϼ@	y�D�aH�(Κ�y=e��n�|6��bV�g@jv8� �ov1��pˊ3G�z�5b���e-���%T������v���V��� 2�4{��� 2�}��_oC��!�"h�ezK�i3�[Q��{���j��KC�Qĳ�7��r��b�u�]�s���sPf�4p�ٹN b��*�챸+�{��b0]�����Bݐ:3��UOI�F�.J��wc#�|0��y&���E	C���[6�n,�Q�@�̘{�Y���h�n�<�"d���, 	  �d���n�8"o��DFr!Q<#�Uh�^��t4iW )�ޓh�Rf��G� ?�k%ӄ��VE�m����
�W&Nz9��qɉ�q
��n�d����ym�&��A�����A {)�!f7��U�������oI�ڒ����S)a� ,�c�z�(W�4��)ˬX�?�U��/�0���{���wY�a2Eգ]Pg4���wZ����/����5p�����s�U��q[.��,��a�[)�l��0��N!Њ5�M�� pѯ�4�:z�nM.��R]��8���2u��j�mP�@ߘw��[zԨ���Vl}���)w߆�-F"������ktBǒ%g'�E �5,�:l�1	�n<*7��C|�4���]�X���Ť�f�z�iϊ� s5���L�����B��F��~~�*5�1l�P�*s#�8-�n�h���܉�nD���)����o��觍N��2:H�}����)#:`�I9�ǆ`\�ԟ��}߫�8�02~�����G�
p�/�X�W�$f� �'�Ӹ&���<�Ѕ��r�g8�-^H2��s%υ�*��;��a�ї�Di����/Ei+�4��8�n���� �C�4ݽ7׽���8�aZ6�(
!Ƀ���#�sl�q��zU��#�3��T�O��sA�_�4oe��mm�u|�^��0�q��V�v�����ĴyX6t<����d6�t�������Jaf�Y��m�#����]�'Xg ��?�'kdei��,+��5�[��mevG!�5��2����A?���b��Ɛ6	�B�0�z�C�N�r�"�m��6�rm&<��o�U���c�d��rB�9q�`�`!w.���g+�����4��I�>��O�u��+�����@��s^���s�������Xư��	��EL1��_�%�GA��d4Z�|3o��a�@��B0��}^T��(�D`�<�F�3�=/I�58�j�9g,���a'��m�bԸ� �E<������6�F�^y��?�gm� ����C�h���D$kxDo ~So�e�ԩP�:�	S(Oz�i�F����՛Q1��N+�F�A�Щ9 �P.e��7 ����zҜ�u�VK���U��}��f�%c�dONˣ��`U�/m6�^�c|K���N��`�]t�����ՙ�f�.Z�	��5�3Y
2�V�����̸�)N�*���ԥ�W�2$v7f�ۀ3&��i��˰���4`�TN�'�8}g��1b�c�T�*�4/n*E��:	���:��\�؈�u�E{�[؀ p��}�3�>���$�Kwh襸$��,#���N�+��8P��=����ϝ���j��-9�jZ�i�Kִ��+���k�z��XF19V��nKs'B"�{�'^�,*�i��)�@�f��u��.m �8��_���D���q����`��@Z��Q���_�5��0��XPu6P�Wd��p�N/���d1*�xc�A���P�MS�+��|��c.��4Rx:`�,3����ѡ�h65-�M7���o�A@�;�����U�0Ϡ*�m)�9<*�J�X���͸K�l����`�H��1Ώ$���j�-gt^�3az����=6~��px:<��ްۡw���6��S��i��'u1����t����/2ӤE��DǗ�B��l�7��������7�'t�F�F
 ���c�l\5��֗u�^�-Z�3)�M���)�c;&��x\6Q	��_"��x����N�4f�����5�Ǜ�6b}�z\t�b2R3��a���	8��?�y0�.ȏOs0Y� Q��zYD�Y�<�ڠ\hU�d����D�2ڠ-��v��N"	hc�.H�+Ҽ������l>W�u�QM˘F޳R8y_(�Q��M�f=1�ȂME��Rz���x�>WP�1���z���	 ƛ@�<�Jn���'�|�f�c諶s&^��^Zc>B�׃B<T��8��_y��� b�����Zx���B[��88����Ж�zܑ�B��_:^����
d�*oڨ�'Mr=
,p�0���nE���.�Ż��0�h�&1j|
5I�p�>�S��{tRܰFgN0:Z�c�ֆa�g�������2��� �2��<��n+=�i����F�]=�����b�9˝�8��pMy�,�&�Z�Rj����E���g������T��?�����@9�2�MC�&-ʜGf�R����>�E�l�6"�IU,�OϿ�����˔�     