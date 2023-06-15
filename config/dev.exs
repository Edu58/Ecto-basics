import Config

config :learnecto, Learnecto.Repo,
  username: "edwin",
  password: "root",
  hostname: "localhost",
  database: "learnecto_dev",
  stacktrace: true,
  show_sensitive_data_on_connection_error: true,
  pool_size: 10
