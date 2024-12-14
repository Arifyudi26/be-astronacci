export const membershipType = (req, res, next) => {
  const membershipType = req.user.type_membership;

  if (membershipType === "type-a") {
    req.limit = 3;
  } else if (membershipType === "type-b") {
    req.limit = 10;
  } else if (membershipType === "type-c") {
    req.limit = null;
  } else {
    req.limit = 3;
  }

  next();
};
