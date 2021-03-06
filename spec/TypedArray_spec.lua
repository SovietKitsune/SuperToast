describe('TypedArray', function()
   describe(':__init', function()
      it('should panic on invalid type', function()
         assert.has_error(function()
            toast.TypedArray()
         end, 'bad argument #1 to \'__init\' (string expected, got nil)')
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
         end, 'bad argument #1 to \'push\' (number expected, got nil)')
      end)
   end)
end)
