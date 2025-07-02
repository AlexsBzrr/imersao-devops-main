# Use uma imagem base oficial do Python
FROM python:3.10-slim

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia o arquivo de dependências para o diretório de trabalho
COPY requirements.txt .

# Instala as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Copia o restante do código da aplicação
COPY . .

# Expõe a porta 8000 para permitir a comunicação com a aplicação
EXPOSE 8000

# Comando para executar a aplicação quando o container iniciar
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]