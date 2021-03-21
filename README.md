Создание кластера Kubernetes из двух нод в [Yandex Cloud][], используя [Terraform][], [Kubeadm][] и [Ansible][].

## Зависимости

Для работы необходимо наличие:

* [Ansible][]
* [Terraform][]

## Использование 

Для начала необходимо отредактировать конфигурационный файл terraform/[main.tf][] указав ваши настройки [провайдера][]

### Создание инфраструктуры

Следующая команда развернет две виртуальные машины с внешними IP адресами и создаст файл inventory для Ansible:
```sh
make infrastructure
```

### Создание кластера

После того как виртуальные машины готовы, установим kubeadm и развернем одну master ноду и одну worker ноду выполнив:
```sh
make cluster
```
Дополнительно установится Kubernetes dashboard, который будет доступен через kubectl proxy по внешнему адресу первой виртуальной машины.

### Удаление

Удалить кластер и виртуальные машины:
```sh
make destroy
```


[Ansible]: https://www.ansible.com/
[Terraform]: https://www.terraform.io/downloads.html
[Kubeadm]: https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/install-kubeadm/
[Yandex Cloud]: https://cloud.yandex.ru/
[main.tf]: https://github.com/mihailag/sf__create_node/blob/master/terraform/main.tf
[провайдера]: https://cloud.yandex.ru/docs/solutions/infrastructure-management/terraform-quickstart#configure-provider
