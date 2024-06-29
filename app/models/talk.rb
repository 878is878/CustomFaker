class Talk < ApplicationRecord
  enum feeling: { BREAKING: 1, NORMAL: 2, LIVE: 3 }
end
