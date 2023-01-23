import geopandas as gpd
import sqlalchemy as sal
from dotenv import load_dotenv
import os
import pathlib

# Get root directory
APP_DIR = pathlib.Path(os.path.realpath(__file__)).parent

# Helper function
def get_engine(postgres_env_path: str) -> None:
    """
    Creates a sql engine

    Args:
        postgres_env_path (str): Pathway to the Postgres .env file
    """

    load_dotenv(dotenv_path=postgres_env_path)
    connection_str = os.environ["DATABASE_URL"]
    return sal.create_engine(connection_str)


BASE_DIR = pathlib.Path(os.path.realpath(__file__)).parent
geo_input_path = os.path.join(APP_DIR, "data/sample.geojson")
postgis_env_path = os.path.join(APP_DIR, ".envs/.postgis.env")

gdf = gpd.read_file(geo_input_path)

# create a database engine
engine = get_engine(postgis_env_path)

# import data into the database
with engine.connect() as con:
    gdf.to_postgis("sample_table", con, if_exists="replace", index=False)
