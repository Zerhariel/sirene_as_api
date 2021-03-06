--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.4
-- Dumped by pg_dump version 9.6.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: etablissements; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE etablissements (
    id integer NOT NULL,
    siren character varying,
    siret character varying,
    nic character varying,
    l1_normalisee character varying,
    l2_normalisee character varying,
    l3_normalisee character varying,
    l4_normalisee character varying,
    l5_normalisee character varying,
    l6_normalisee character varying,
    l7_normalisee character varying,
    l1_declaree character varying,
    l2_declaree character varying,
    l3_declaree character varying,
    l4_declaree character varying,
    l5_declaree character varying,
    l6_declaree character varying,
    l7_declaree character varying,
    numero_voie character varying,
    indice_repetition character varying,
    type_voie character varying,
    libelle_voie character varying,
    code_postal character varying,
    cedex character varying,
    region character varying,
    libelle_region character varying,
    departement character varying,
    arrondissement character varying,
    canton character varying,
    commune character varying,
    libelle_commune character varying,
    departement_unite_urbaine character varying,
    taille_unite_urbaine character varying,
    numero_unite_urbaine character varying,
    etablissement_public_cooperation_intercommunale character varying,
    tranche_commune_detaillee character varying,
    zone_emploi character varying,
    is_siege character varying,
    enseigne character varying,
    indicateur_champ_publipostage character varying,
    statut_prospection character varying,
    date_introduction_base_diffusion character varying,
    nature_entrepreneur_individuel character varying,
    libelle_nature_entrepreneur_individuel character varying,
    activite_principale character varying,
    libelle_activite_principale character varying,
    date_validite_activite_principale character varying,
    tranche_effectif_salarie character varying,
    libelle_tranche_effectif_salarie character varying,
    tranche_effectif_salarie_centaine_pret character varying,
    date_validite_effectif_salarie character varying,
    origine_creation character varying,
    date_creation character varying,
    date_debut_activite character varying,
    nature_activite character varying,
    lieu_activite character varying,
    type_magasin character varying,
    is_saisonnier character varying,
    modalite_activite_principale character varying,
    caractere_productif character varying,
    participation_particuliere_production character varying,
    caractere_auxiliaire character varying,
    nom_raison_sociale character varying,
    sigle character varying,
    nom character varying,
    prenom character varying,
    civilite character varying,
    numero_rna character varying,
    nic_siege character varying,
    region_siege character varying,
    departement_commune_siege character varying,
    email character varying,
    nature_juridique_entreprise character varying,
    libelle_nature_juridique_entreprise character varying,
    activite_principale_entreprise character varying,
    libelle_activite_principale_entreprise character varying,
    date_validite_activite_principale_entreprise character varying,
    activite_principale_registre_metier character varying,
    is_ess character varying,
    date_ess character varying,
    tranche_effectif_salarie_entreprise character varying,
    libelle_tranche_effectif_salarie_entreprise character varying,
    tranche_effectif_salarie_entreprise_centaine_pret character varying,
    date_validite_effectif_salarie_entreprise character varying,
    categorie_entreprise character varying,
    date_creation_entreprise character varying,
    date_introduction_base_diffusion_entreprise character varying,
    indice_monoactivite_entreprise character varying,
    modalite_activite_principale_entreprise character varying,
    caractere_productif_entreprise character varying,
    date_validite_rubrique_niveau_entreprise_esa character varying,
    tranche_chiffre_affaire_entreprise_esa character varying,
    activite_principale_entreprise_esa character varying,
    premiere_activite_secondaire_entreprise_esa character varying,
    deuxieme_activite_secondaire_entreprise_esa character varying,
    troisieme_activite_secondaire_entreprise_esa character varying,
    quatrieme_activite_secondaire_entreprise_esa character varying,
    nature_mise_a_jour character varying,
    indicateur_mise_a_jour_1 character varying,
    indicateur_mise_a_jour_2 character varying,
    indicateur_mise_a_jour_3 character varying,
    date_mise_a_jour character varying,
    type_evenement character varying,
    date_evenement character varying,
    type_creation character varying,
    date_reactivation_etablissement character varying,
    date_reactivation_entreprise character varying,
    indicateur_mise_a_jour_enseigne_entreprise character varying,
    indicateur_mise_a_jour_activite_principale_etablissement character varying,
    indicateur_mise_a_jour_adresse_etablissement character varying,
    indicateur_mise_a_jour_caractere_productif_etablissement character varying,
    indicateur_mise_a_jour_caractere_auxiliaire_etablissement character varying,
    indicateur_mise_a_jour_nom_raison_sociale character varying,
    indicateur_mise_a_jour_sigle character varying,
    indicateur_mise_a_jour_nature_juridique character varying,
    indicateur_mise_a_jour_activite_principale_entreprise character varying,
    indicateur_mise_a_jour_caractere_productif_entreprise character varying,
    indicateur_mise_a_jour_nic_siege character varying,
    siret_predecesseur_successeur character varying,
    telephone character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    longitude character varying,
    latitude character varying,
    geo_score character varying,
    geo_type character varying,
    geo_adresse character varying,
    geo_id character varying,
    geo_ligne character varying
);


--
-- Name: etablissements_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE etablissements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: etablissements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE etablissements_id_seq OWNED BY etablissements.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


--
-- Name: etablissements id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY etablissements ALTER COLUMN id SET DEFAULT nextval('etablissements_id_seq'::regclass);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: etablissements etablissements_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY etablissements
    ADD CONSTRAINT etablissements_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: entreprises_to_tsvector_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX entreprises_to_tsvector_idx ON etablissements USING gin (to_tsvector('french'::regconfig, (siren)::text));


--
-- Name: entreprises_to_tsvector_idx1; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX entreprises_to_tsvector_idx1 ON etablissements USING gin (to_tsvector('french'::regconfig, (siret)::text));


--
-- Name: entreprises_to_tsvector_idx2; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX entreprises_to_tsvector_idx2 ON etablissements USING gin (to_tsvector('french'::regconfig, (activite_principale)::text));


--
-- Name: entreprises_to_tsvector_idx3; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX entreprises_to_tsvector_idx3 ON etablissements USING gin (to_tsvector('french'::regconfig, (l6_normalisee)::text));


--
-- Name: entreprises_to_tsvector_idx4; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX entreprises_to_tsvector_idx4 ON etablissements USING gin (to_tsvector('french'::regconfig, (nom_raison_sociale)::text));


--
-- Name: index_etablissements_on_activite_principale; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_etablissements_on_activite_principale ON etablissements USING btree (activite_principale);


--
-- Name: index_etablissements_on_l6_normalisee; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_etablissements_on_l6_normalisee ON etablissements USING btree (l6_normalisee);


--
-- Name: index_etablissements_on_nom_raison_sociale; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_etablissements_on_nom_raison_sociale ON etablissements USING btree (nom_raison_sociale);


--
-- Name: index_etablissements_on_siren; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_etablissements_on_siren ON etablissements USING btree (siren);


--
-- Name: index_etablissements_on_siret; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_etablissements_on_siret ON etablissements USING btree (siret);


--
-- PostgreSQL database dump complete
--

SET search_path TO "$user", public;

INSERT INTO "schema_migrations" (version) VALUES
('20170118130314'),
('20170124130819'),
('20170130100203'),
('20170922094826'),
('20170925105117'),
('20180420104754');


