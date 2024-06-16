# DockerHub e LocalStack

## DockerHub
  - Descrição: Serviço de registro de contêineres.
  - Função: Armazenamento e distribuição de imagens de contêineres.
  - Tarefas:
        Push e pull de imagens.
        Gerenciamento de versões.
        Automação de builds.

## LocalStack

 - Descrição: Ferramenta de simulação de serviços AWS localmente.
 - Função: Simulação de serviços AWS para desenvolvimento e teste.
 - Tarefas:
    Simulação de serviços AWS como S3 e DynamoDB.
    Desenvolvimento e teste locais.
    Configuração e implantação local.
    Monitoramento e depuração.



# Projeto DevOps Challenge

## Criação do Cluster Kubernetes com Kind

1. Certifique-se de ter o Kind instalado. Se ainda não tiver, você pode instalá-lo seguindo as instruções em [Kind GitHub](https://github.com/kubernetes-sigs/kind).

2. Clone este repositório:

```bash
git clone https://github.com/seu-usuario/devops-challenge.git
cd devops-challenge
```

# 3. Execute o comando abaixo para criar o cluster Kind:
```bash
kind create cluster --config=kind-cluster.yaml

```
Este comando utiliza a configuração definida no arquivo kind-cluster.yaml para criar o cluster Kind localmente. Certifique-se de que o arquivo kind-cluster.yaml está presente no diretório.


# 4. Após a execução bem-sucedida do comando, verifique se o cluster foi criado corretamente:

```bash
kubectl cluster-info
kubectl get nodes

```
