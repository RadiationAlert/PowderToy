function Log (value)
	tpt.log (value);
end

function Error (value)
	tpt.throw_error (value);
end

function Dialog (title, value)
	tpt.message_box (title, value);
end

function Read (title, value, prefix)
	_title = title or "User Response";
	_value = value or "Please provide input...";
	_prefix = prefix or "";
	tpt.input (_title, _value, _prefix);
end