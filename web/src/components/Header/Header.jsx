import { Link, routes } from '@redwoodjs/router'

import Logo from 'src/assets/rw-image.png'

const Header = () => {
  return (
    <div>
      <header className="header-component">
        <div className="div-logo">
          <img className="logo" src={Logo} alt="logo-rw" />
          <h1>Uploader Project</h1>
        </div>
        <nav>
          <ul>
            <li className="font-rw em-">
              <Link to={routes.home()}>
                <p>Home</p>
              </Link>
            </li>
            <li className="font-rw">
              <Link to={routes.newImage()}>
                <p>Upload Image</p>
              </Link>
            </li>
            <li className="font-rw">
              <Link to={routes.images()}>
                <p>View Image</p>
              </Link>
            </li>
          </ul>
        </nav>
      </header>
    </div>
  )
}

export default Header
