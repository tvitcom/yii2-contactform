<?php

/* @var $this \yii\web\View */
/* @var $content string */
use yii\helpers\Url;
use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use frontend\assets\AppAsset;
use common\widgets\Alert;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
 
    <link href="/css/ownpresentation_style.css" rel="stylesheet">
    <!-- Loading Flat UI -->
    <link href="http://192.168.10.181/ownpresentation/css/flat-ui.css" rel="stylesheet">
    
    <link href="http://192.168.10.181/ownpresentation/css/style.css" rel="stylesheet">
    <link href="http://192.168.10.181/ownpresentation/css/style-contact.css" rel="stylesheet">
    <link href="http://192.168.10.181/ownpresentation/css/style-content.css" rel="stylesheet">
    <link href="http://192.168.10.181/ownpresentation/css/style-footers.css" rel="stylesheet">
    <link href="http://192.168.10.181/ownpresentation/css/style-headers.css" rel="stylesheet">
    <link href="http://192.168.10.181/ownpresentation/css/style-portfolios.css" rel="stylesheet">
    <link href="http://192.168.10.181/ownpresentation/css/style-pricing.css" rel="stylesheet">
    <link href="http://192.168.10.181/ownpresentation/css/style-team.css" rel="stylesheet">
    <link href="http://192.168.10.181/ownpresentation/css/style-dividers.css" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link href="http://192.168.10.181/ownpresentation/css/font-awesome.css" rel="stylesheet">
    
    
</head>
<body>
<?php $this->beginBody() ?>

<div class="wrap">
    <?php
    NavBar::begin([
        'brandLabel' => 'Contactform Company - public area',
        'brandUrl' => Yii::$app->homeUrl,
        'options' => [
            'class' => 'navbar-inverse navbar-fixed-top',
        ],
    ]);
    $menuItems = [
        ['label' => 'Home', 'url' => ['/site/index']],
        //['label' => 'About', 'url' => ['/site/about']],
        ['label' => 'Contact', 'url' => ['/site/contact']],
        ['label' => 'Login', 'url' => '/adm'],
    ];
    /*
    if (Yii::$app->user->isGuest) {
        $menuItems[] = ['label' => 'Signup', 'url' => ['/site/signup']];
        $menuItems[] = ['label' => 'Login', 'url' => ['/site/login']];
    } else {
        $menuItems[] = '<li>'
            . Html::beginForm(['/site/logout'], 'post')
            . Html::submitButton(
                'Logout (' . Yii::$app->user->identity->username . ')',
                ['class' => 'btn btn-link logout']
            )
            . Html::endForm()
            . '</li>';
    }*/
    echo Nav::widget([
        'options' => ['class' => 'navbar-nav navbar-right'],
        'items' => $menuItems,
    ]);
    NavBar::end();
    ?>

    <div class="container">
        <?= Breadcrumbs::widget([
            'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
        ]) ?>
        <?= Alert::widget() ?>
        <?= $content ?>
    </div>
</div>

<footer class="footer">
    <div class="container">
        <p class="pull-left">&copy; Contactform Company <?= date('Y') ?></p>

        <p class="pull-right"><?= Yii::powered() ?></p>
    </div>
</footer>

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
