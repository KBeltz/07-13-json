# Load/create our database for this program.
DATABASE = SQLite3::Database.new("assignments.db")
DATABASE.execute("PRAGMA foreign_keys = ON;")

# Make the tables.
DATABASE.execute("CREATE TABLE IF NOT EXISTS assignments (id INTEGER PRIMARY KEY, name TEXT NOT NULL, description TEXT NOT NULL);")

DATABASE.execute("CREATE TABLE IF NOT EXISTS links (id INTEGER PRIMARY KEY, repository TEXT, url TEXT, assignment_id INTEGER, FOREIGN KEY (assignment_id) REFERENCES assignments(id));")

DATABASE.execute("CREATE TABLE IF NOT EXISTS collaborators (id INTEGER PRIMARY KEY, name TEXT, assignment_id INTEGER, FOREIGN KEY (assignment_id) REFERENCES assignments(id));")

DATABASE.execute("CREATE TABLE IF NOT EXISTS assignments_links (assignment_id INTEGER, link_id INTEGER, FOREIGN KEY (assignment_id) REFERENCES assignments(id), FOREIGN KEY (link_id) REFERENCES links(id));")

DATABASE.execute("CREATE TABLE IF NOT EXISTS assignments_collaborators (assignment_id INTEGER, collaborator_id INTEGER, FOREIGN KEY (assignment_id) REFERENCES assignments(id), FOREIGN KEY (collaborator_id) REFERENCES collaborators(id));")

# Get results as an Array of Hashes.
DATABASE.results_as_hash = true
