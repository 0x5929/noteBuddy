export default function () {
	const csrf = document.querySelector("meta[name='csrf-token']").getAttribute("content")

	console.log('csrf: ', csrf)

	return (
		<div>
			<div>
				<p>Hello, world!</p>
				<p>React + Rails Integration wassup!</p>
			</div>
			<form action="/users/sign_in" method="post">
				<input type="hidden" name="authenticity_token" value={csrf}/>
				<input name="user[email]" placeholder="email" />
				<input name="user[password]" type="password" />
				<input name="submit" value="submit" type="submit" />
			</form>
		</div>
	)
}
