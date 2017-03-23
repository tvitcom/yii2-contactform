<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\Appeal */

$this->title = Yii::t('app', 'Create Appeal');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Home'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="appeal-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('appeal_form', [
        'model' => $model,
    ]) ?>

</div>
