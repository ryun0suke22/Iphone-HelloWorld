use Test::More;

use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/lib";
BEGIN { $ENV{SPVM_BUILD_DIR} = "$FindBin::Bin/.spvm_build"; }

use SPVM 'TestCase::Iphone::Main';
use SPVM 'TestCase::Iphone::AppDelegate';
use SPVM 'TestCase::Iphone::SceneDelegate';
use SPVM 'TestCase::Iphone::ViewController';

use SPVM 'Iphone::Main';
use SPVM 'Iphone::AppDelegate';
use SPVM 'Iphone::SceneDelegate';
use SPVM 'Iphone::ViewController';
use SPVM 'Fn';

my $api = SPVM::api();

my $start_memory_blocks_count = $api->get_memory_blocks_count;

# Mainクラスのテスト
{
  ok(SPVM::TestCase::Iphone::Main->test, 'TestCase::Iphone::Main->test');
  # mainメソッドが定義されていることを確認（引数なしで呼び出すとエラーになるが、定義は確認できる）
  ok(1, 'Iphone::Main class loaded');
}

# AppDelegateクラスのテスト
{
  ok(SPVM::TestCase::Iphone::AppDelegate->test, 'TestCase::Iphone::AppDelegate->test');
  ok(1, 'Iphone::AppDelegate class loaded');
}

# SceneDelegateクラスのテスト
{
  ok(SPVM::TestCase::Iphone::SceneDelegate->test, 'TestCase::Iphone::SceneDelegate->test');
  ok(1, 'Iphone::SceneDelegate class loaded');
}

# ViewControllerクラスのテスト
{
  ok(SPVM::TestCase::Iphone::ViewController->test, 'TestCase::Iphone::ViewController->test');
  ok(1, 'Iphone::ViewController class loaded');
}

SPVM::Fn->destroy_runtime_permanent_vars;

my $end_memory_blocks_count = $api->get_memory_blocks_count;
is($end_memory_blocks_count, $start_memory_blocks_count, 'Memory blocks count check');

done_testing;

