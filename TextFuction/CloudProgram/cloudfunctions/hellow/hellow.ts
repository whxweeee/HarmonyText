let myHandler = async function (event, context, callback, logger) {
  logger.info(JSON.stringify(event));

  // do something here

  callback({
    code: 200,
    message: "Hello world"
  });
};

export { myHandler };