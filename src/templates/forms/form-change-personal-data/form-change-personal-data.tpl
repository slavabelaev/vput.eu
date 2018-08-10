<!-- Form: form-change-personal-data -->
<div class="form-change-personal-data card">
    <h3 class="card-header lead font-weight-bold">Ваши личные данные</h3>
    <figure class="card-body bg-light d-md-flex">
        <img src="templates/forms/form-change-personal-data/form-change-personal-data__profile.svg" alt="" class="mb-3 mb-md-0 mr-md-3">
        <figcatpion>
            <h4 class="lead">Заполни свой профиль за 1 секунду, используя соцсеть</h4>
            <p class="mb-0 text-muted">Система обновит фото и основные данные</p>
        </figcatpion>
    </figure>
    <form class="card-body">
        <div class="form-row">
            <div class="col-xl-5 col-lg-6">
                <div class="form-group">
                    <label for="inputEmail4">Имя</label>
                    <input type="name" class="form-control" id="inputEmail4" placeholder="">
                </div>
                <div class="form-group">
                    <label for="inputPassword4">Фамилия</label>
                    <input type="name" class="form-control" id="inputPassword4" placeholder="">
                </div>
                <div class="form-group">
                    <label for="inputState">О себе</label>
                    <textarea name="" id="" rows="5" class="form-control"></textarea>
                </div>
            </div>
            <div class="col-xl-5 col-lg-6 offset-xl-1">
                <div class="form-group">
                    <label for="inputCity">Мобильный телефон</label>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="icon icon__mobile"></i></span>
                        </div>
                        <input type="phone" class="form-control">
                        <div class="input-group-append">
                            <button class="btn btn-outline-success collapsed"
                                    type="button"
                                    data-toggle="collapse"
                                    data-target=".form-change-personal-data__confirm-number"
                                    id="button-addon2">Подтвердить</button>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputState">Доп. мобильный телефон</label>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="icon icon__mobile"></i></span>
                        </div>
                        <input type="phone" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputState">E-mail</label>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="icon icon__email"></i></span>
                        </div>
                        <input type="text" class="form-control">
                    </div>
                </div>
            </div>
        </div>
    </form>
    <div class="form-change-personal-data__confirm-number collapse">
        <form class="card-footer bg-light">
            <header>
                <h3 class="lead">Подтверждение номера телефона:</h3>
                <p class="text-muted">На ваш номер телефона выслан код, введите его в поле, указанное ниже</p>
            </header>
            <div class="row">
                <div class="form-group col-md-6 col-lg-5">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="icon icon__mobile"></i></span>
                        </div>
                        <input type="number"
                               required
                               class="form-control"
                               placeholder="Код">
                        <div class="input-group-append">
                            <button class="btn btn-success" type="submit" id="button-addon2">Подтвердить</button>
                        </div>
                    </div>
                </div>
            </div>
            <p class="text-muted mb-0">Ваши личные данные не подтверждены. Из-за этого ваш аккаунт не будет вызывать доверия у потенциальных клиентов. Пожалуйста, подтвердите ваш телефон и email.</p>
        </form>
    </div>
</div>
<!-- /Form: form-change-personal-data -->