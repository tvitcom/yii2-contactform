<?php

namespace common\models;

use Yii;
use yii\helpers\Html;
/**
 * This is the model class for table "appeal".
 *
 * @property string $id
 * @property string $name
 * @property string $email
 * @property string $homepage
 * @property string $content
 * @property string $filename
 * @property string $useragent
 * @property string $ip_addr
 * @property string $t_send
 */
class Appeal extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'appeal';
    }

    public $verifyCode;
    
    const SCENARIO_ADM = 'login';
    const SCENARIO_PUBLIC = 'register';

    public function scenarios()
    {
            $scenarios = parent::scenarios();
            $scenarios[self::SCENARIO_ADM] = ['name', 'email','content'];
            $scenarios[self::SCENARIO_PUBLIC] = ['name', 'email','homepage', 'content','useragent','ip_addr','t_send'];
            return $scenarios;
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name', 'email', 'content'], 'required'],
            [['name'], 'string', 'max' => 24],
            [['email'], 'string', 'max' => 55],
            ['email', 'email','checkDNS'=>true],
            [['homepage'], 'string', 'max' => 64],
            ['homepage', 'url', 'defaultScheme' => 'http'],
            [['content'], 'string', 'max' => 718],
            [['content'], 'filter', 'filter' => function ($value) {
                    return Html::encode($value);
                }, 'on' => self::SCENARIO_PUBLIC],
            [['content'], 'string', 'min' => 12],
            [['filename'], 'string', 'max' => 128],          
            [['useragent'], 'filter', 'filter' => function ($value) {
                    return $_SERVER['HTTP_USER_AGENT'];
                }, 'on' => self::SCENARIO_PUBLIC],
            [['ip_addr'], 'filter', 'filter' => function ($value) {
                    return $_SERVER['REMOTE_ADDR'];
                }, 'on' => self::SCENARIO_PUBLIC
            ],
            [['t_send'], 'filter', 'filter' => function ($value) {
                    return date("Y-m-d H:i:s");
                }, 'on' => self::SCENARIO_PUBLIC
            ], 
            // verifyCode needs to be entered correctly
            ['verifyCode', 'captcha', 'on'=>self::SCENARIO_PUBLIC],      
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'name' => Yii::t('app', 'Name'),
            'email' => Yii::t('app', 'Email'),
            'homepage' => Yii::t('app', 'Homepage'),
            'content' => Yii::t('app', 'Content'),
            'filename' => Yii::t('app', 'Filename'),
            'useragent' => Yii::t('app', 'Useragent'),
            'ip_addr' => Yii::t('app', 'Ip Addr'),
            't_send' => Yii::t('app', 'T Send'),
            'verifyCode' => 'Verification Code',
        ];
    }

    /**
     * Sends an email to the specified email address using the information collected by this model.
     *
     * @param string $email the target email address
     * @return bool whether the email was sent
     */
    public function sendEmail($email)
    {
        return Yii::$app->mailer->compose()
            ->setTo($email)
            ->setFrom([$this->email => $this->name])
            ->setSubject('From customer '.$this->name.' ['.$this->ip_addr.']')
            ->setTextBody($this->content)
            ->send();
    }
}
