const logger = console.log;
console.log = (text, ...args) => {
	if (typeof text == "string" && text.indexOf("Super Admin") > -1) logger("--redacted--");
	else logger(text, ...args);
};
