describe('TypedArray', function()
   describe(':__init', function()
      it('should panic on invalid type', function()
         assert.has_error(function()
            toast.TypedArray()
         end, 'Expected string | function, instead got nil')
      end)

      it('should allow functions', function()
         toast.TypedArray(print)
      end)

      it('should allow strings', function()
         toast.TypedArray('number')
      end)
   end)

   describe(':push', function()
      it('should panic on invalid type', function()
         assert.has_error(function()
            local arr = toast.TypedArray('number')

            arr:push()
         end, 'The item passed must be number')
      end)
   end)
end)