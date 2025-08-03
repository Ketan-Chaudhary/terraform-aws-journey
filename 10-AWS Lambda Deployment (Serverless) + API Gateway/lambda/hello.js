exports.handler = async (event) => {
  return {
    statusCode: 200,
    body: JSON.stringify({
      message: "Hello from Terraform Lambda!",
      timestamp: new Date().toISOString(),
    }),
  };
};
