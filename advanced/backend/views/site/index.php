<?php

/* @var $this yii\web\View */

use yii\helpers\Url;

$this->title = 'My Yii Application';
?>
<div class="site-index">

    <div class="jumbotron">
        <h1>Show appeals</h1>

        <p class="lead">You may see last appeals.</p>

        <p><a class="btn btn-lg btn-success" href="<?=Url::toRoute('appeal/index')?>">show appeals</a></p>
    </div>

    <div class="body-content">

        <div class="row">
            <p><?php
echo '<br>Url::to --> '.Url::to(''); // текущий URL
 
echo '<br>Url::toRoute([view, id => contact]) --> '.Url::toRoute(['view', 'id' => 'contact']); // тот же контроллер, другой экшн
echo '<br>Url::toRoute(post/index) --> '.Url::toRoute('post/index'); // тот же модуль, другие контроллер и экшн
echo '<br>Url::toRoute(/site/index) --> '.Url::toRoute('/site/index'); // абсолютный роут вне зависимости от текущего контроллера
echo '<br>Url::toRoute(hi-tech) --> '.Url::toRoute('hi-tech'); // URL для экшна в с регистрозависимым именем `actionHiTech` текущего контроллера
echo '<br>Url::toRoute([/date-time/fast-forward, id => 105]) --> '.Url::toRoute(['/date-time/fast-forward', 'id' => 105]); // URL для регистрозависимых экшна и контроллера `DateTimeController::actionFastForward`
 
echo '<br>Url::to(@web) --> '.Url::to('@web'); // получаем URL из алиаса
 
echo '<br>Url::canonical() --> '.Url::canonical(); // получаем canonical URL для текущей страницы
echo '<br>Url::home() --> '.Url::home(); // получаем домашний URL
 
'<br>'.Url::remember(); // сохраняем URL для последующего использования
'<br>'.Url::previous(); // получаем ранее сохранённый URL
            ?></p>
        </div>

    </div>
</div>
