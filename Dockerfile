FROM python:latest

WORKDIR /azure-vote

COPY /azure-vote/ .

RUN pip install --no-cache-dir -r requirements.txt

COPY azure-vote .

EXPOSE 80

CMD ["python", "main.py"]

HEALTHCHECK --interval=5s --timeout=3s \
 CMD curl -f http://localhost:5000/ || exit 1