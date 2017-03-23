<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "appeal".
 *
 * @property string $id
 * @property string $name
 * @property string $email
 * @property string $homepage
 * @property string $content
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
    
    const SCENARIO_ADM = 'login';
    const SCENARIO_PUBLIC = 'register';

    public function scenarios()
    {
            $scenarios = parent::scenarios();
            $scenarios[self::SCENARIO_ADM] = ['name', 'email','content'];
            $scenarios[self::SCENARIO_PUBLIC] = ['name', 'email', 'content'];
            return $scenarios;
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name', 'email', 'content'], 'required'],
            [['t_send'], 'safe', 'on' => self::SCENARIO_ADM],
            [['name'], 'string', 'max' => 24],
            [['email'], 'string', 'max' => 55],
            ['email', 'email','checkDNS'=>true],
            [['homepage'], 'string', 'max' => 64],
            ['homepage', 'url', 'defaultScheme' => 'http'],
            [['content'], 'string', 'max' => 718],
            [['content'], 'string', 'min' => 12],
            //[['useragent'], 'string', 'max' => 255, 'on' => self::SCENARIO_ADM],
            ['useragent', 'filter', 'filter' => function ($value) {
                    return $_SERVER['HTTP_USER_AGENT'];
                }//, 'on' => self::SCENARIO_PUBLIC
            ],
            [['ip_addr'], 'string', 'max' => 45,'on' => self::SCENARIO_ADM],
            [['ip_addr'], 'filter', 'filter' => function ($value) {
                    return $_SERVER['REMOTE_ADDR'];//'
                }//, 'on' => self::SCENARIO_PUBLIC
            ]
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
            'useragent' => Yii::t('app', 'Useragent'),
            'ip_addr' => Yii::t('app', 'Ip Addr'),
            't_send' => Yii::t('app', 'T Send'),
        ];
    }
}
