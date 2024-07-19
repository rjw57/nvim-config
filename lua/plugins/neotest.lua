local status, neotest, neotest_python

status, neotest = pcall(require, "neotest")
if not status then
  return
end

status, neotest_python = pcall(require, "neotest-python")
if not status then
  return
end

neotest.setup({
  adapters = {
    neotest_python({
      runner = "pytest",
    }),
  }
})
