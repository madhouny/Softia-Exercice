PGDMP         9                y           softia    13.4    13.4     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16477    softia    DATABASE     b   CREATE DATABASE softia WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'French_France.1252';
    DROP DATABASE softia;
                postgres    false            ?            1259    17275    attestation    TABLE     ?   CREATE TABLE public.attestation (
    id_attestation integer NOT NULL,
    message character varying(255),
    convention_id_convention integer,
    etudiant_id_etudiant integer
);
    DROP TABLE public.attestation;
       public         heap    postgres    false            ?            1259    17269    attestation_sequence    SEQUENCE     }   CREATE SEQUENCE public.attestation_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.attestation_sequence;
       public          postgres    false            ?            1259    17280 
   convention    TABLE     ?   CREATE TABLE public.convention (
    id_convention integer NOT NULL,
    nb_heur integer NOT NULL,
    nom character varying(255)
);
    DROP TABLE public.convention;
       public         heap    postgres    false            ?            1259    17271    convention_sequence    SEQUENCE     |   CREATE SEQUENCE public.convention_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.convention_sequence;
       public          postgres    false            ?            1259    17285    etudiant    TABLE     ?   CREATE TABLE public.etudiant (
    id_etudiant integer NOT NULL,
    mail character varying(255),
    nom character varying(255),
    prenom character varying(255),
    convention_id_convention integer
);
    DROP TABLE public.etudiant;
       public         heap    postgres    false            ?            1259    17273    etudiant_sequence    SEQUENCE     z   CREATE SEQUENCE public.etudiant_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.etudiant_sequence;
       public          postgres    false            ?          0    17275    attestation 
   TABLE DATA           n   COPY public.attestation (id_attestation, message, convention_id_convention, etudiant_id_etudiant) FROM stdin;
    public          postgres    false    203   ?       ?          0    17280 
   convention 
   TABLE DATA           A   COPY public.convention (id_convention, nb_heur, nom) FROM stdin;
    public          postgres    false    204   ?       ?          0    17285    etudiant 
   TABLE DATA           \   COPY public.etudiant (id_etudiant, mail, nom, prenom, convention_id_convention) FROM stdin;
    public          postgres    false    205   ?       ?           0    0    attestation_sequence    SEQUENCE SET     B   SELECT pg_catalog.setval('public.attestation_sequence', 5, true);
          public          postgres    false    200            ?           0    0    convention_sequence    SEQUENCE SET     B   SELECT pg_catalog.setval('public.convention_sequence', 1, false);
          public          postgres    false    201            ?           0    0    etudiant_sequence    SEQUENCE SET     @   SELECT pg_catalog.setval('public.etudiant_sequence', 1, false);
          public          postgres    false    202            0           2606    17279    attestation attestation_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.attestation
    ADD CONSTRAINT attestation_pkey PRIMARY KEY (id_attestation);
 F   ALTER TABLE ONLY public.attestation DROP CONSTRAINT attestation_pkey;
       public            postgres    false    203            2           2606    17284    convention convention_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.convention
    ADD CONSTRAINT convention_pkey PRIMARY KEY (id_convention);
 D   ALTER TABLE ONLY public.convention DROP CONSTRAINT convention_pkey;
       public            postgres    false    204            4           2606    17292    etudiant etudiant_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.etudiant
    ADD CONSTRAINT etudiant_pkey PRIMARY KEY (id_etudiant);
 @   ALTER TABLE ONLY public.etudiant DROP CONSTRAINT etudiant_pkey;
       public            postgres    false    205            5           2606    17293 '   attestation fkavuyws0uieqhf0garmd3lhpml    FK CONSTRAINT     ?   ALTER TABLE ONLY public.attestation
    ADD CONSTRAINT fkavuyws0uieqhf0garmd3lhpml FOREIGN KEY (convention_id_convention) REFERENCES public.convention(id_convention);
 Q   ALTER TABLE ONLY public.attestation DROP CONSTRAINT fkavuyws0uieqhf0garmd3lhpml;
       public          postgres    false    203    2866    204            6           2606    17298 '   attestation fkf3ishhxm5gk2f7d2felhin33c    FK CONSTRAINT     ?   ALTER TABLE ONLY public.attestation
    ADD CONSTRAINT fkf3ishhxm5gk2f7d2felhin33c FOREIGN KEY (etudiant_id_etudiant) REFERENCES public.etudiant(id_etudiant);
 Q   ALTER TABLE ONLY public.attestation DROP CONSTRAINT fkf3ishhxm5gk2f7d2felhin33c;
       public          postgres    false    205    2868    203            7           2606    17303 $   etudiant fkh2eswxppald1tetoap4kcwwqy    FK CONSTRAINT     ?   ALTER TABLE ONLY public.etudiant
    ADD CONSTRAINT fkh2eswxppald1tetoap4kcwwqy FOREIGN KEY (convention_id_convention) REFERENCES public.convention(id_convention);
 N   ALTER TABLE ONLY public.etudiant DROP CONSTRAINT fkh2eswxppald1tetoap4kcwwqy;
       public          postgres    false    204    205    2866            ?   ?   x?Ւ=n?0?g?? ?;?Z?蘩??f?2Y??@{???X?????=^??{????Ie?9?[?p??ߖ?mho?#h???F?%z?F?@ɩ?ۖ?????9Vg?Zs-?I.?8?ဎK???kO?r?}???IbD?!?W'?g?#?K?,?/??2??m??󝰡????B4??K?W?^g?????l???|N3?Ome??h       ?   !   x?3?4?,.?/*?2?4?L???-?????? R&?      ?   C   x?3???/?K-vH?M???K?ύɃ
s?&?d ???\F?i?)?9PUiE?E??I?AN#?=... ?;:     