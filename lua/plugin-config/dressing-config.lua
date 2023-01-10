local status, dressing = pcall(require, 'dressing')

if not status then
	print('Plugin dressing not load')
	return
end

-- TODO: need to make normal config

dressing.setup {
	input = {
	}
}
