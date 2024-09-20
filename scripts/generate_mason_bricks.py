import os
import json

# Obter o diretório de trabalho atual (equivalente a pwd)
current_dir = os.getcwd()

# Construir o caminho completo para o diretório .mason
mason_dir = os.path.join(current_dir, '.mason')

# Criar o diretório .mason se ele não existir
os.makedirs(mason_dir, exist_ok=True)

# Construir o caminho completo para o arquivo bricks.json
bricks_file = os.path.join(mason_dir, 'bricks.json')

# Criar o objeto JSON
bricks_data = {
    "module": f"{current_dir}/templates/module"
}

# Escrever o objeto JSON no arquivo bricks.json
with open(bricks_file, 'w') as f:
    json.dump(bricks_data, f, indent=2)

print(f"Arquivo {bricks_file} criado com sucesso.")
print(f"Conteúdo: {json.dumps(bricks_data, indent=2)}")