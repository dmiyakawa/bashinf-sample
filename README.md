# これは何？

Bash Infinity (bash-oo-framework) の特にログ周りを試してみただけのプロジェクト

* https://github.com/niieani/bash-oo-framework
  * Copyright (c) 2015 Bazyli Brzóska @ https://invent.life/

以下の検証で使いました。

http://qiita.com/amedama/items/135551123694b0680823

# 使い方

本プロジェクト直下に bash-oo-framework/ として上記のプロジェクトを設置する。

```
$ git clone https://github.com/niieani/bash-oo-framework.git
$ bash4 ./log_sample.sh
I'm blue...
[DEBUG] [log_sample.sh:31] Play me some Jazz, will ya? 🎷
Something bad happened.
This will be printed to STDERR, no matter what.
step1〜step2:  23 ms
step2〜step3:  61 ms
step3〜step4:  25 ms
```

# ライセンス

MIT

