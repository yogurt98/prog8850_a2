-- Jingxu Lan 8823667 PROG8850
-- Add a new table
CREATE TABLE IF NOT EXISTS projects (
    project_id INT AUTO_INCREMENT PRIMARY KEY,
    project_name VARCHAR(255) NOT NULL,
    start_date DATE,
    end_date DATE
);

-- Add a new column
ALTER TABLE projects
ADD COLUMN budget DECIMAL(10, 2);
