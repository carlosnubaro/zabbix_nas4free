zbx_nas4free
============

### 使い方 ###
NAS4Free 向けに作成したスクリプトになります。
これをマウントしたディレクトリに配置し、[システム]-[高度な設定]から
[スクリプト]を選択します。

### コマンド ###
　配置したスクリプトをフルパスで指定します。

### タイプ ###
　システム初期化後で問題ないようなので、「PostInit」を選択し、保存します。

これで再起動を実施し、Zabbix_agentdが起動していることを確認、
また、Zabbix Server側からもデータが取得できることを確認します。

### 更新履歴 ###

    ・1.0　公開
    ・1.1　書き換え部分に不具合があったので修正
    ・1.2　EnableRemoteCommandsを有効化
