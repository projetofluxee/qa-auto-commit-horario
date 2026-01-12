Perfeito. Segue o README COMPLETO da VERSÃO 1 – Auto-commit por horário, no mesmo nível profissional da versão 2, pronto para colar no repositório.

📌 Auto Commit por Horário – Versionamento Automático de Scripts
🎯 Objetivo

Este projeto demonstra uma automação que realiza commit e push automáticos no GitHub em horários programados, versionando arquivos .script presentes na pasta Scripts.

A automação:

não gera commits vazios

não exige interação do usuário

utiliza autenticação SSH

mantém o histórico do Git limpo e confiável

🧠 Como a solução funciona (visão geral)

Um script .bat é executado pelo Agendador de Tarefas do Windows

O script verifica se houve alterações reais na pasta Scripts

Somente se houver mudanças:

arquivos são adicionados

commit é criado

push é enviado ao GitHub

Caso não haja alterações, nenhuma ação é executada

⚠️ O commit é disparado por horário, não por evento.

📁 Estrutura do Projeto
C:\qa-auto-commit-horario\
├── Scripts\
│   └── exemplo.script
├── auto-commit.bat
├── README.md
└── .git\

🔐 Pré-requisitos

Antes de utilizar a automação, é obrigatório:

Git instalado

Repositório GitHub criado

Autenticação via SSH

Agendador de Tarefas do Windows disponível

Verifique o SSH com:

ssh -T git@github.com

🔗 Configuração do Repositório Git

Dentro da pasta do projeto:

git init
git branch -M main
git remote add origin git@github.com:SEU-USUARIO/qa-auto-commit-horario.git
git push -u origin main


Confirme:

git remote -v

⚙️ Script de Auto-commit (auto-commit.bat)

O arquivo auto-commit.bat é responsável por:

verificar se houve alterações

impedir commits vazios

executar commit e push apenas quando necessário

Comportamento esperado:

❌ Sem mudanças → nada acontece

✅ Com mudanças → commit + push automáticos

▶️ Execução Manual (teste inicial)

Antes de configurar o agendador, teste manualmente:

Crie ou altere um arquivo .script dentro de Scripts

Execute:

auto-commit.bat


Resultado esperado:

Commit criado

Push enviado ao GitHub

Teste também sem alterações para confirmar que nenhum commit é gerado.

⏰ Execução Automática (Agendador de Tarefas)

O Agendador de Tarefas é responsável por executar o script em horários definidos.

Configuração recomendada:

Programa/script:

C:\qa-auto-commit-horario\auto-commit.bat


Iniciar em:

C:\qa-auto-commit-horario


Trigger sugerido:

Diário

Horário definido pelo time (ex: final do expediente)

Opções importantes:

☑ Executar estando o usuário logado ou não

☑ Executar com privilégios mais altos

✅ Como testar a automação

Configure o agendador

Aguarde o horário programado ou execute a tarefa manualmente

Verifique:

histórico de commits

atualização no GitHub

⚠️ Observações Importantes

Apenas alterações reais geram commits

Commits vazios são bloqueados propositalmente

O caminho do projeto no .bat deve ser exato

SSH é obrigatório para execução automática

📊 Comparação com a versão por evento
Versão	Disparo do Commit	Tecnologia
Horário	Agendador	Batch (.bat)
Evento	Criação de arquivo	PowerShell
✅ Conclusão

Este projeto demonstra uma automação baseada em execução periódica, ideal para cenários onde os arquivos precisam ser versionados em intervalos regulares, garantindo controle de versão consistente sem dependência de ações humanas.