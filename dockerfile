FROM jupyter/scipy-notebook

COPY ["requirements.txt","/app/"]

RUN pip install -r /app/requirements.txt &&\
    conda update conda &&\
    conda install pandas fiona shapely pyproj rtree &&\
    conda create -n geo_env &&\
    source activate geo_env &&\
    conda config --env --add channels conda-forge &&\
    conda config --env --set channel_priority strict &&\
    conda install python=3 geopandas
# RUN conda install matplotlib>=3.3.4

