# Discord Auto-Updater
Um script bash e serviço systemd para atualizar automaticamente o Discord em máquinas Linux sempre que o computador for ligado. O Discord impede a execução caso haja uma atualização pendente, exigindo que o usuário baixe e instale manualmente a nova versão. Este script automatiza esse processo, garantindo que o Discord esteja sempre atualizado sem intervenção manual.

## Como funciona
1. O script baixa automaticamente o pacote `.deb` mais recente do Discord usando seu link oficial.
2. O arquivo é salvo temporariamente em `/tmp/discord.deb`.
3. O script instala o pacote com `sudo dpkg -i /tmp/discord.deb`.
4. Após a instalação, o arquivo `.deb` é removido para liberar espaço.
5. Um serviço systemd executa o script automaticamente toda vez que o computador é iniciado.

## Instalação
### 1. Clonar o repositório
```bash
git clone https://github.com/uartu0/discord-updater.git
cd discord-updater
```

### 2. Configurar o script
Dê permissão de execução ao script:
```bash
chmod +x install.sh
```

## Remoção
Se quiser remover o serviço:
```bash
sudo systemctl stop discord-update.service
sudo systemctl disable discord-update.service
sudo rm /etc/systemd/system/discord-update.service
sudo systemctl daemon-reload
```

## Contribuição
Pull requests são bem-vindos! Se encontrar algum problema, abra uma issue.

## Licença
[MIT](LICENSE)

