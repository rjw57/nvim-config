local status, dap_ui, dap_python

status, dap_ui = pcall(require, "dapui")
if not status then
  return
end

status, dap_python = pcall(require, "dap-python")
if not status then
  return
end

dap_ui.setup()
dap_python.setup()
