
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
(assert (and (is-Cons l3) (= l1 Nil) (is-Cons Nil)) )
(assert (and (= l1 Nil) (is-Nil l0)) )
(assert (and (is-Nil Nil) (is-Cons Nil) (is-Cons l3)) )
(assert (not (= l1 l3)) )
(assert (= l2 Nil) )
(assert (is-Nil l1) )
(assert (and (= l3 Nil) (= l1 l3) (is-Cons Nil)) )
(assert (or (= l3 Nil) (= l0 Nil) (is-Cons Nil) (= l2 l3)) )
(check-sat)
