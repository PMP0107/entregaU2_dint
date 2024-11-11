import UIKit

class PeliculasViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private let peliculas = Pelicula.sampleData // Utiliza Pelicula.sampleData
    private let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Películas"
        view.backgroundColor = .white
        setupTableView()
    }
    
    private func setupTableView() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(PeliculaTableViewCell.self, forCellReuseIdentifier: "PeliculaCell")
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peliculas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PeliculaCell", for: indexPath) as? PeliculaTableViewCell else {
            return UITableViewCell()
        }
        cell.configure(with: peliculas[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedPelicula = peliculas[indexPath.row]
        let detailVC = PeliculaDetailViewController()
        detailVC.pelicula = selectedPelicula
        navigationController?.pushViewController(detailVC, animated: true)
    }
}

