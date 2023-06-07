
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
(assert (is-Cons Nil) )
(assert (and (= l0 l2) (= l3 Nil) (is-Cons l3) (= l1 Nil)) )
(assert (is-Nil l3) )
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (= l1 Nil) (= l3 Nil)) )
(assert (not (= l2 Nil)) )
(assert (= l3 Nil) )
(assert (is-Cons Nil) )
(check-sat)
