CREATE TABLE projects (
    id INTEGER PRIMARY KEY,
    title TEXT,
    tagline TEXT,
    category TEXT,
    days_to_production INTEGER
    );



CREATE TABLE suggestion_boxes (
    id INTEGER PRIMARY KEY,
    suggestion TEXT,
    project_id INTEGER,
    member_id INTEGER,
    left_review DATETIME
    );


CREATE TABLE members (
    id INTEGER PRIMARY KEY,
    usename TEXT,
    # backed_project TEXT,
    # pledges_to_date INTEGER,
    active_since DATETIME,
    );

INSERT VALUES projects (title, category, days_to_production) VALUES
    (Ureach, Interact with all VR/AR platforms, Tech & Innovation, 29),
    (PowerGO ONE, PowerGO ONE is an eternal power source in your pocket for your devices, Phones & Accessories, 42),
    (Air Capsule, Air Capsule is an unusual and high-quality purifier and humidifier air, health-fitness, 36)
    (NESO Bags, Functional Bags With a Revolutionary Interchangeable Module System, Travel & Outdoors, 30);





