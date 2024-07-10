create database food;
use food;
use dummy;
create table project (
Store varchar(20),Product varchar(20),Price decimal(10,2),p_Date varchar(20));
select * from project;


show variables like "secure_file_priv";

create  database entrepreneur;
use entrepreneur;
select* from acquisitions;
select * from degrees;
select * from funding_rounds;
select * from funds;
select * from investments;
select * from ipos;
select * from milestones;
select * from objects;
select * from office;
select * from people;
select * from relationships;


 drop table acquisitions;
CREATE TABLE acquisitions (
    id INT PRIMARY KEY,
    acquisition_id INT,
    acquiring_object_id VARCHAR(50),
    acquired_object_id VARCHAR(50),
    term_code VARCHAR(50),
    price_amount DECIMAL(15, 2),
    price_currency_code VARCHAR(10),
    acquired_at DATE,
    source_url VARCHAR(255),
    source_description TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

CREATE TABLE degrees (
    id INT PRIMARY KEY,
    object_id INT,
    degree_type VARCHAR(50),
    subject VARCHAR(100),
    institution VARCHAR(100),
    graduated_at DATE,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);


CREATE TABLE funding_rounds (
    id INT PRIMARY KEY,
    funding_round_id INT,
    object_id VARCHAR(255),
    funded_at DATE,
    funding_round_type VARCHAR(255),
    funding_round_code VARCHAR(255),
    raised_amount_usd BIGINT,
    raised_amount BIGINT,
    raised_currency_code VARCHAR(255),
    pre_money_valuation_usd BIGINT,
    pre_money_valuation BIGINT,
    pre_money_currency_code VARCHAR(255),
    post_money_valuation_usd BIGINT,
    post_money_valuation BIGINT,
    post_money_currency_code VARCHAR(255),
    participants INT,
    is_first_round BOOLEAN,
    is_last_round BOOLEAN,
    source_url TEXT,
    source_description TEXT,
    created_by VARCHAR(255),
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

-- Create the table
CREATE TABLE funds (
    id INT PRIMARY KEY,
    fund_id INT,
    object_id VARCHAR(255),
    name VARCHAR(255),
    funded_at DATE,
    raised_amount BIGINT,
    raised_currency_code VARCHAR(255),
    source_url TEXT,
    source_description TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

-- Create the table
CREATE TABLE investments (
    id INT PRIMARY KEY,
    funding_round_id INT,
    funded_object_id VARCHAR(255),
    investor_object_id VARCHAR(255),
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

-- Create the table
CREATE TABLE ipos (
    id INT PRIMARY KEY,
    ipo_id INT,
    object_id VARCHAR(255),
    valuation_amount BIGINT,
    valuation_currency_code VARCHAR(255),
    raised_amount BIGINT,
    raised_currency_code VARCHAR(255),
    public_at DATE,
    stock_symbol VARCHAR(255),
    source_url TEXT,
    source_description TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);
-- Create the table
CREATE TABLE milestones (
    id INT PRIMARY KEY,
    object_id VARCHAR(255),
    milestone_at DATE,
    milestone_code VARCHAR(255),
    description TEXT,
    source_url TEXT,
    source_description TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);
CREATE TABLE offices (
    id INT PRIMARY KEY,
    object_id VARCHAR(255),
    office_id INT,
    description TEXT,
    region VARCHAR(255),
    address1 VARCHAR(255),
    address2 VARCHAR(255),
    city VARCHAR(255),
    zip_code VARCHAR(20),
    state_code VARCHAR(20),
    country_code VARCHAR(20),
    latitude DECIMAL(10, 6),
    longitude DECIMAL(10, 6),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
CREATE TABLE objects (
    id VARCHAR(255) PRIMARY KEY,
    entity_type VARCHAR(50),
    entity_id INT,
    parent_id INT,
    name VARCHAR(255),
    normalized_name VARCHAR(255),
    permalink VARCHAR(255),
    category_code VARCHAR(255),
    status VARCHAR(50),
    founded_at DATE,
    closed_at DATE,
    domain VARCHAR(255),
    homepage_url VARCHAR(255),
    twitter_username VARCHAR(50),
    logo_url VARCHAR(255),
    logo_width INT,
    logo_height INT,
    short_description TEXT,
    description TEXT,
    overview TEXT,
    tag_list VARCHAR(255),
    country_code VARCHAR(20),
    state_code VARCHAR(20),
    city VARCHAR(255),
    region VARCHAR(255),
    first_investment_at DATE,
    last_investment_at DATE,
    investment_rounds INT,
    invested_companies INT,
    first_funding_at DATE,
    last_funding_at DATE,
    funding_rounds INT,
    funding_total_usd INT,
    first_milestone_at DATE,
    last_milestone_at DATE,
    milestones INT,
    relationships INT,
    created_by VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE objects (
    id VARCHAR(255) PRIMARY KEY,
    entity_type VARCHAR(50),
    entity_id INT,
    parent_id INT,
    name VARCHAR(255),
    normalized_name VARCHAR(255),
    permalink VARCHAR(255),
    category_code VARCHAR(255),
    status VARCHAR(50),
    founded_at DATE,
    closed_at DATE,
    domain VARCHAR(255),
    homepage_url VARCHAR(255),
    twitter_username VARCHAR(50),
    logo_url VARCHAR(255),
    logo_width INT,
    logo_height INT,
    short_description TEXT,
    description TEXT,
    overview TEXT,
    tag_list VARCHAR(255),
    country_code VARCHAR(20),
    state_code VARCHAR(20),
    city VARCHAR(255),
    region VARCHAR(255),
    first_investment_at DATE,
    last_investment_at DATE,
    investment_rounds INT,
    invested_companies INT,
    first_funding_at DATE,
    last_funding_at DATE,
    funding_rounds INT,
    funding_total_usd INT,
    first_milestone_at DATE,
    last_milestone_at DATE,
    milestones INT,
    relationships INT,
    created_by VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE people (
    id INT PRIMARY KEY,
    object_id VARCHAR(255),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birthplace VARCHAR(255),
    affiliation_name VARCHAR(255)
);

CREATE TABLE relationships (
    id INT PRIMARY KEY,
    relationship_id INT,
    person_object_id VARCHAR(255),
    relationship_object_id VARCHAR(255),
    start_at DATE,
    end_at DATE,
    is_past INT,
    sequence INT,
    title VARCHAR(255),
    created_at DATETIME,
    updated_at DATETIME
);







-- acquisition_id	acquiring_object_id	acquired_object_id	term_code	price_amount	price_currency_code	acquired_at	source_url	source_description	created_at	updated_at
 
show variables like "secure_file_priv";

select count(*) from acquisitions;