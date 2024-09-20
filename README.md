# poscrisma

Projeto do poscrisma 

## Configuração

Antes de começar, certifique-se de que o Mason está configurado corretamente. Use o Makefile fornecido para configurar o ambiente:

```
make bricks
```

Este comando irá gerar o arquivo de configuração necessário para o Mason.

## Criando Snippets de Código

Existem dois tipos principais de snippets que você pode criar:

1. Features de UI
2. Features de regra/controle interno

### Para Features de UI

1. Navegue para o diretório de módulos UI:
   ```
   cd lib/modules
   ```

2. Use o comando Mason para criar a feature:
   ```
   mason make module --name "Nome da feature"
   ```

### Para Features de Regra/Controle Interno

1. Navegue para o diretório de módulos compartilhados:
   ```
   cd lib/modules/shared
   ```

2. Use o comando Mason para criar a feature:
   ```
   mason make module --name "Nome da feature"
   ```

## Notas Importantes

- Sempre verifique se você está no diretório correto antes de executar o comando `mason make`.
- O nome da feature deve ser descritivo e seguir as convenções de nomenclatura do projeto.
- Após criar um snippet, revise o código gerado e faça os ajustes necessários para atender às necessidades específicas do seu projeto.

## Resolução de Problemas

Se você encontrar problemas ao executar os comandos Mason, verifique se:

1. O Mason está instalado corretamente.
2. Você está no diretório correto do projeto.
3. O arquivo de configuração do Mason foi gerado corretamente usando o Makefile.

Para mais informações sobre como usar o Mason, consulte a [documentação oficial do Mason](https://github.com/felangel/mason).

## Contribuindo

Se você tiver sugestões para melhorar este processo ou encontrar problemas, por favor, abra uma issue no repositório do projeto.