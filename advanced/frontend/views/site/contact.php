<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\ActiveForm;
use yii\captcha\Captcha;
use kartik\file\FileInput;

/* @var $this yii\web\View */
/* @var $model common\models\Appeal */
/* @var $form yii\widgets\ActiveForm */

$this->title = Yii::t('app', 'Create Appeal');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="appeal-create">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php if (Yii::$app->session->hasFlash('contactFormSubmitted')) { ?>

        <div class="alert alert-success">
            Thank you for contacting us. We will respond to you as soon as possible.<?=Html::a ('Go back', '/');?>
        </div>
        <?php if (YII_DEBUG) { ?>
        <p>
            Note that if you turn on the Yii debugger, you should be able
            to view the mail message on the mail panel of the debugger.
            <?php if (Yii::$app->mailer->useFileTransport) { ?>
                Because the application is in development mode, the email is not sent but saved as
                a file under <code><?= Yii::getAlias(Yii::$app->mailer->fileTransportPath) ?></code>.
                Please configure the <code>useFileTransport</code> property of the <code>mail</code>
                application component to be false to enable email sending.
            <?php } ?>
        </p>
        <?php } ?>
    <?php } else { ?>

        <p>
            If you have business inquiries or other questions, please fill out the following form to contact us.
            Thank you.
        </p>

        <div class="appeal-form">

            <?php $form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']]); ?>

            <?= $form->field($model, 'name')->textInput(['maxlength' => true]) ?>

            <?= $form->field($model, 'email')->textInput(['maxlength' => true]) ?>

            <?= $form->field($model, 'homepage')->textInput(['maxlength' => true]) ?>

            <?= $form->field($model, 'content')->textarea(['rows' => 6,'maxlength' => true]) ?>

            <?= $form->field($model, 'upload')->fileInput() ?>
            
            <div class="form-group">
                <?= Html::submitButton($model->isNewRecord ? Yii::t('app', 'Send') : Yii::t('app', 'Update'), ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
            </div>

            <?php ActiveForm::end(); ?>

        </div>
    <?php } ?>
</div>
