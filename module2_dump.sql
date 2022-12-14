PGDMP     '    2    	            z           module2    14.5    14.5                 0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16400    module2    DATABASE     k   CREATE DATABASE module2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE module2;
                postgres    false            ?            1259    16433    count    TABLE     T   CREATE TABLE public.count (
    id integer NOT NULL,
    words character varying
);
    DROP TABLE public.count;
       public         heap    postgres    false            ?            1259    16432    count_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.count_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.count_id_seq;
       public          postgres    false    218                       0    0    count_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.count_id_seq OWNED BY public.count.id;
          public          postgres    false    217            ?            1259    16401    first_table    TABLE     ?   CREATE TABLE public.first_table (
    id integer NOT NULL,
    name text,
    pwd character varying(100),
    email character varying(100),
    gender character varying(20)
);
    DROP TABLE public.first_table;
       public         heap    postgres    false            ?            1259    16406    first_table_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.first_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.first_table_id_seq;
       public          postgres    false    209                       0    0    first_table_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.first_table_id_seq OWNED BY public.first_table.id;
          public          postgres    false    210            ?            1259    16407    genders    TABLE     R   CREATE TABLE public.genders (
    "Gender information:" character varying(100)
);
    DROP TABLE public.genders;
       public         heap    postgres    false            ?            1259    16410    info    TABLE     >   CREATE TABLE public.info (
    info character varying(100)
);
    DROP TABLE public.info;
       public         heap    postgres    false            ?            1259    16416 
   vocabulary    TABLE     l   CREATE TABLE public.vocabulary (
    id integer NOT NULL,
    name character varying(255),
    info text
);
    DROP TABLE public.vocabulary;
       public         heap    postgres    false            ?            1259    16421    vocabulary_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.vocabulary_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.vocabulary_id_seq;
       public          postgres    false    213                       0    0    vocabulary_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.vocabulary_id_seq OWNED BY public.vocabulary.id;
          public          postgres    false    214            ?            1259    16422    word    TABLE     r   CREATE TABLE public.word (
    id integer NOT NULL,
    word character varying(255),
    vocabulary_id integer
);
    DROP TABLE public.word;
       public         heap    postgres    false            ?            1259    16425    word_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.word_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.word_id_seq;
       public          postgres    false    215                       0    0    word_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.word_id_seq OWNED BY public.word.id;
          public          postgres    false    216            v           2604    16436    count id    DEFAULT     d   ALTER TABLE ONLY public.count ALTER COLUMN id SET DEFAULT nextval('public.count_id_seq'::regclass);
 7   ALTER TABLE public.count ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            s           2604    16426    first_table id    DEFAULT     p   ALTER TABLE ONLY public.first_table ALTER COLUMN id SET DEFAULT nextval('public.first_table_id_seq'::regclass);
 =   ALTER TABLE public.first_table ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209            t           2604    16427    vocabulary id    DEFAULT     n   ALTER TABLE ONLY public.vocabulary ALTER COLUMN id SET DEFAULT nextval('public.vocabulary_id_seq'::regclass);
 <   ALTER TABLE public.vocabulary ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213            u           2604    16428    word id    DEFAULT     b   ALTER TABLE ONLY public.word ALTER COLUMN id SET DEFAULT nextval('public.word_id_seq'::regclass);
 6   ALTER TABLE public.word ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215                      0    16433    count 
   TABLE DATA           *   COPY public.count (id, words) FROM stdin;
    public          postgres    false    218   N                 0    16401    first_table 
   TABLE DATA           C   COPY public.first_table (id, name, pwd, email, gender) FROM stdin;
    public          postgres    false    209   z                 0    16407    genders 
   TABLE DATA           8   COPY public.genders ("Gender information:") FROM stdin;
    public          postgres    false    211                    0    16410    info 
   TABLE DATA           $   COPY public.info (info) FROM stdin;
    public          postgres    false    212   M                 0    16416 
   vocabulary 
   TABLE DATA           4   COPY public.vocabulary (id, name, info) FROM stdin;
    public          postgres    false    213   ?                 0    16422    word 
   TABLE DATA           7   COPY public.word (id, word, vocabulary_id) FROM stdin;
    public          postgres    false    215                      0    0    count_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.count_id_seq', 5, true);
          public          postgres    false    217                       0    0    first_table_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.first_table_id_seq', 6, true);
          public          postgres    false    210                       0    0    vocabulary_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.vocabulary_id_seq', 5, true);
          public          postgres    false    214                       0    0    word_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.word_id_seq', 50, true);
          public          postgres    false    216                  x?3?44?2? ?D???=... >9?         ?   x?eʱ?0????aHh?7cd0&N.????"Ѿ??D????R\h???,?&??z???\?Z?T?@?????????;Gx?5'?|???˰g???[?0?????E??:.b	????????B9?C[u?
\??JD?         %   x?OU?H,KU0VHʯ,V?
???3?r?1z\\\ ??
?         u   x?m?1
A??~N?,{?D,+?0<̰??b?ۻ???W?<?I?Ӷ3{??$???df;{טK?W?? ^C??Q???>@Q??-P???ނ?<?@??????<???)??\g         <   x?3?L???M?)????2?,N??????9?KJ?RAlΌ???<Ӕ3?D??qqq $^4         B  x?5?Qr? ????th?C?}!?&?f??w?L??[?q]?YZ$?A????????l?:!?_[v?[~r?Q?????{???????N]?r??v??Ai?r?2ؼ??#J?I??(?A???=#R???4???"͊?<B?l}A?|?r\+??̠5????in??#???.??C??+????=????1?0?M??[+?\xF?oC?8?dy???Q:?^$??rn^x?#Q8???o????N?o?x??*R??B"LèQQ??c?#ҹE???P}n?????h?;4???M??'???x?g????h7??1????     