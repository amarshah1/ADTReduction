
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
(assert (or (is-Nil Nil) (= l2 l2) (is-Cons Nil) (is-Nil l0)) )
(assert (and (= l1 l2) (= l3 Nil) (= l0 l2)) )
(assert (and (= l1 l3) (= l1 Nil) (is-Cons l1)) )
(assert (and (is-Cons Nil) (= l3 Nil) (is-Cons Nil)) )
(assert (not (= l3 Nil)) )
(assert (not (= l0 l2)) )
(assert (or (is-Cons l3) (= l1 Nil)) )
(assert (= l0 l3) )
(check-sat)
