
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (not (= l0 Nil)) )
(assert (and (= l1 Nil) (is-Cons Nil) (= l2 Nil)) )
(assert (or (is-Cons Nil) (= l3 l3) (is-Nil Nil) (= l3 Nil)) )
(assert (and (is-Nil l2) (= l1 l0) (is-Cons l0)) )
(assert (is-Cons Nil) )
(assert (not (is-Cons Nil)) )
(assert (or (= l1 Nil) (= l3 Nil) (= l1 l2)) )
(assert (= l3 l3) )
(check-sat)
