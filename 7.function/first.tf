output printfirst {
	value = "printing ${join(",",var.users)}"
}

output uppercase {
	value = "printing ${upper(var.users[0])}"
}

output lowercase {
	value = "printing ${lower(var.users[0])}"
}

output titlecase {
	value = "printing ${title(var.users[0])}"
}
