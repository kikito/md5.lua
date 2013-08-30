local md5 = require('md5')

local function hex2bin(hex)
  local result, _ = hex:gsub('..', function(hexval)
    return string.char(tonumber(hexval, 16))
  end)
  return result
end

describe('md5', function()
  describe('md5.sumhexa', function()
    it('works', function()
      assert.equal(md5.sumhexa("asdf"), '912ec803b2ce49e4a541068d495ab570')
      assert.equal(md5.sumhexa('The quick brown fox jumps over the lazy dog'), '9e107d9d372bb6826bd81d3542a419d6')
      assert.equal(md5.sumhexa('The quick brown fox jumps over the lazy dog.'), 'e4d909c290d0fb1ca068ffaddf22cbd0')
      assert.equal(md5.sumhexa(''), 'd41d8cd98f00b204e9800998ecf8427e')
    end)
  end)

  describe('md5.sum', function()
    it('works', function()
      assert.equal(md5.sum("asdf"), hex2bin '912ec803b2ce49e4a541068d495ab570')
      assert.equal(md5.sum('The quick brown fox jumps over the lazy dog'), hex2bin'9e107d9d372bb6826bd81d3542a419d6')
      assert.equal(md5.sum('The quick brown fox jumps over the lazy dog.'), hex2bin'e4d909c290d0fb1ca068ffaddf22cbd0')
      assert.equal(md5.sum(''), hex2bin'd41d8cd98f00b204e9800998ecf8427e')
    end)
  end)
end)
