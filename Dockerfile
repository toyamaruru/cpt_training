FROM jupyter/datascience-notebook

WORKDIR /app

COPY requirements.txt .

RUN pip install -U "setuptools<58"

RUN pip install -r requirements.txt

COPY . /app

CMD ["jupyter", "notebook", "--ip='*'", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]