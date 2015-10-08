# Do check something

## 使い方
* パスの通ったディレクトリに起動用の shell script を置きます。

    #for example
    #!/bin/sh
    $HOME/.rbenv/shims/ruby $HOME/bin/_some_check/checker.rb $1

* チェックしたいディレクトリに移って、shell script を動かします。

    $ cd some_dir
    $ some_check

* 引数が無いときは第一階層のみ。
* 引数が all のときは再帰的にチェック。
* 引数がファイル名のときはそのファイルだけをチェック。
