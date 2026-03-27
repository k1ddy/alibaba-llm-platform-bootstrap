# Alibaba LLM Platform Bootstrap

Репозиторий foundation-уровня для облачной инфраструктуры, базового platform bootstrap и общих управляющих поверхностей.

## Что Этот Репозиторий Делает
- хранит Terraform-инфраструктуру;
- хранит foundation-активы платформы;
- хранит минимальную операторскую автоматизацию;
- фиксирует архитектурные решения platform-уровня.

## Что Этот Репозиторий Не Делает
- не содержит бизнес-логику приложений;
- не содержит runtime-код ассистента;
- не хранит desired deployment state окружений;
- не хранит eval datasets или demo-content.

## Базовая Структура
- `docs/adr/` — архитектурные решения.
- `infra/terraform/` — модули и env roots.
- `ops/ansible/` — точечная операторская автоматизация.
- `bootstrap/root-app/` — root-level GitOps bootstrap assets, когда будем готовы.

## Текущая Роль В Платформе
Этот repo отвечает за foundation, а не за runtime и не за GitOps state.
