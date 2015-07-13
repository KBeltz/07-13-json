# Load/create our database for this program.
DATABASE = SQLite3::Database.new("assignments.db")
DATABASE.execute("PRAGMA foreign_keys = ON;")

# Make the tables.
DATABASE.execute("CREATE TABLE IF NOT EXISTS assignments (id INTEGER PRIMARY KEY, name TEXT NOT NULL, description TEXT NOT NULL);")

DATABASE.execute("CREATE TABLE IF NOT EXISTS links (id INTEGER PRIMARY KEY, repository TEXT, assignment_id INTEGER, FOREIGN KEY (assignment_id) REFERENCES assignments(id));")

DATABASE.execute("CREATE TABLE IF NOT EXISTS collaborators (id INTEGER PRIMARY KEY, name TEXT, assignment_id INTEGER, FOREIGN KEY (assignment_id) REFERENCES assignments(id));")

# Get results as an Array of Hashes.
DATABASE.results_as_hash = true
