import Config

config :learnecto, ecto_repos: [Learnecto.Repo]

import_config "#{config_env()}.exs"
