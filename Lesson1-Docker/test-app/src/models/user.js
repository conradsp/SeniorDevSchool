const user = (sequelize, DataTypes) => {
  const User = sequelize.define('user', {
    username: {
      type: DataTypes.STRING,
      unique: true,
    },
    fullname: {
      type: DataTypes.STRING,
      unique: false,
    },
  });

  return User;
};

export default user;