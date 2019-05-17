# GenericMVVM
1. Реализован отдельный универсальный табличный датасорс. Его задача поставлять табличке ячейки. На этом все.
2. Датасорс инициализируется с провайдером данных. В наших случаях аналогичный функционал предоставляют вьюмодельки. Надо бы из вьюмоделек этот функционал выносить и переиспользвать.
3. У датасорса регистрируются классы ячеек для соответствующего reuseIdentifier. Это позволяет вытаскивать нужные ячейки из таблицы.
4. Все вьюмодельки должны конформить общий абстрактный протокол ViewModelProtocol
5. Все ячейки должны конформить протокол Configurable. Он и позволяет вьюмодельки в ячейки проставлять.
6. Из-за особенностей работы свифта и кастинга в каждой ячейке приходится создавать копию abstractViewModel конкретного типа, в которую в didSet и устанавливается абстрактная вьюмоделька, приведенная к конкретному типу.

Cамый класс, что теперь любой контроллер инициализируется буквально парой строчек:
-создаем DataProvider/ViewModel
-создаем DataSource
-регистрируем ячейки
-ставим датасорс в табличку.
C делегатом надо поступить аналогично.
