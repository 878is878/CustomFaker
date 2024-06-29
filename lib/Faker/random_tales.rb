require 'faker'
module Faker
  class RandomTales < Base
    class << self
      def title # タイトル
        fetch('random_tales.titles') 
        # random_tales.titlesをキーにロケーションファイルの中からデータを取得
      end

      def particle # 助詞
        fetch('random_tales.particles')
      end

      def predicate # 動詞
        fetch('random_tales.predicates')
      end
    end
  end
end